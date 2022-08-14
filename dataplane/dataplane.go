package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"net"

	"cloud.google.com/go/spanner"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/reflection"
	"google.golang.org/grpc/status"

	dppb "fivebit.co.uk/terraform/proto/dataplane_go_proto"
	tspb "google.golang.org/protobuf/types/known/timestamppb"
)

var (
	port       = flag.Int("port", 50051, "The server port")
	spannerPath = flag.String("spanner_path", "", "The spanner database name - projects/.../instances/.../databases/...")
)

const (
	latestTable = "Latest"
	keyField = "Key"
	valueField = "Value"
)

var (
	latestColumns = []string{keyField, valueField}
)

type server struct {
	db *spanner.Client
}

func (s *server) Set(ctx context.Context, req *dppb.SetRequest) (*dppb.SetResponse, error) {
	if req.GetKey() == "" {
		return nil, status.Error(codes.InvalidArgument, "key must be non-empty")
	}
	m := spanner.InsertOrUpdate(latestTable, latestColumns, []interface{}{req.GetKey(), req.GetValue()})
	ts, err := s.db.Apply(ctx, []*spanner.Mutation{m})
	if err != nil {
		return nil, err
	}
	return &dppb.SetResponse{CommitTimestamp: tspb.New(ts)}, nil
}

func (s *server) Get(ctx context.Context, req *dppb.GetRequest) (*dppb.GetResponse, error) {
	if req.GetKey() == "" {
		return nil, status.Error(codes.InvalidArgument, "key must be non-empty")
	}
	row, err := s.db.Single().ReadRow(ctx, latestTable, spanner.Key{req.GetKey()}, []string{valueField})
	if err != nil {
		return nil, err
	}
	var v []byte
	if err := row.Columns(&v); err != nil {
		return nil, err
	}
	return &dppb.GetResponse{Value: v}, nil
}

func main() {
	flag.Parse()

	ctx := context.Background()

	db, err := spanner.NewClient(ctx, *spannerPath)
	if err != nil {
		log.Fatalf("Failed to create spanner client: %v", err)
	}

	s := &server{
		db: db,
	}

	grpcServer := grpc.NewServer()
	dppb.RegisterDataPlaneServer(grpcServer, s)
	reflection.Register(grpcServer)

	lis, err := net.Listen("tcp", fmt.Sprintf("localhost:%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
