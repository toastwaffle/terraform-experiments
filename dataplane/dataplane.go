package main

import (
	"context"
	"errors"
	"flag"
	"fmt"
	"log"
	"net"

	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	dppb "fivebit.co.uk/terraform/proto/dataplane_go_proto"
)

var (
	port       = flag.Int("port", 50051, "The server port")
)

type server struct {}

func (s *server) Set(ctx context.Context, req *dppb.SetRequest) (*dppb.SetResponse, error) {
	return nil, errors.New("unimplemented")
}

func (s *server) Get(ctx context.Context, req *dppb.GetRequest) (*dppb.GetResponse, error) {
	return nil, errors.New("unimplemented")
}

func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf("localhost:%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	grpcServer := grpc.NewServer()
	dppb.RegisterDataPlaneServer(grpcServer, &server{})
	reflection.Register(grpcServer)
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
