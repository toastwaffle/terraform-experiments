load("@rules_proto//proto:defs.bzl", "proto_library")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

package(
    default_visibility = ["//visibility:public"],
)

proto_library(
    name = "dataplane_proto",
    srcs = ["dataplane.proto"],
    deps = ["@com_google_protobuf//:timestamp_proto"],
)

go_proto_library(
    name = "dataplane_go_proto",
    compilers = ["@io_bazel_rules_go//proto:go_grpc"],
    importpath = "fivebit.co.uk/terraform/proto/dataplane_go_proto",
    proto = ":dataplane_proto",
)
