load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "16e9fca53ed6bd4ff4ad76facc9b7b651a89db1689a2877d6fd7b82aa824e366",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.34.0/rules_go-v0.34.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.34.0/rules_go-v0.34.0.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.18.3")

http_archive(
    name = "rules_proto",
    sha256 = "e017528fd1c91c5a33f15493e3a398181a9e821a804eb7ff5acdd1d2d6c2b18d",
    strip_prefix = "rules_proto-4.0.0-3.20.0",
    urls = [
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0-3.20.0.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

http_archive(
    name = "bazel_gazelle",
    sha256 = "501deb3d5695ab658e82f6f6f549ba681ea3ca2a5fb7911154b5aa45596183fa",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.26.0/bazel-gazelle-v0.26.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.26.0/bazel-gazelle-v0.26.0.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_repository(
    name = "org_golang_google_grpc",
    build_file_proto_mode = "disable",
    importpath = "google.golang.org/grpc",
    sum = "h1:rQOsyJ/8+ufEDJd/Gdsz7HG220Mh9HAhFHRGnIjda0w=",
    version = "v1.48.0",
)

go_repository(
    name = "org_golang_google_protobuf",
    importpath = "google.golang.org/protobuf",
    sum = "h1:d0NfwRgPtno5B1Wa6L2DAG+KivqkdutMf1UhdNx175w=",
    version = "v1.28.1",
)

go_repository(
    name = "org_golang_x_sys",
    importpath = "golang.org/x/sys",
    sum = "h1:2QkjZIsXupsJbJIdSjjUOgWK3aEtzyuh2mPt3l/CkeU=",
    version = "v0.0.0-20220811171246-fbc7d0a398ab",
)

go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    sum = "h1:RDqmgfe7SvlMWoqC3xwQ2blLO3fcWcxMa3eBLRdRW7E=",
    version = "v0.0.0-20220812174116-3211cb980234",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    sum = "h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk=",
    version = "v0.3.7",
)

gazelle_dependencies()
