load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_binary(
    name = "dataplane",
    embed = [":dataplane_lib"],
    visibility = ["//visibility:public"],
)

go_library(
    name = "dataplane_lib",
    srcs = ["dataplane.go"],
    importpath = "fivebit.co.uk/terraform/dataplane",
    visibility = ["//visibility:private"],
    deps = [
        "//proto:dataplane_go_proto",
        "@com_google_cloud_go_spanner//:spanner",
        "@org_golang_google_grpc//:go_default_library",
        "@org_golang_google_grpc//codes",
        "@org_golang_google_grpc//reflection",
        "@org_golang_google_grpc//status",
        "@org_golang_google_protobuf//types/known/timestamppb",
    ],
)
