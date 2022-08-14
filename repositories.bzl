load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

def go_repositories():
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

    go_repository(
        name = "com_google_cloud_go_spanner",
        importpath = "cloud.google.com/go/spanner",
        sum = "h1:MYc3fKJlZZCpZymoKBqPR23Hxd1CFhH+zsQPMzeM1xI=",
        version = "v1.36.0",
    )

    go_repository(
        name = "org_golang_google_api",
        importpath = "google.golang.org/api",
        sum = "h1:8JHk7q/+rJla+iRsWj9FQ9/wjv2M1SKtpKSdmLhxPT0=",
        version = "v0.92.0",
    )

    go_repository(
        name = "io_opencensus_go",
        importpath = "go.opencensus.io",
        sum = "h1:gqCw0LfLxScz8irSi8exQc7fyQ0fKQU/qnC/X8+V/1M=",
        version = "v0.23.0",
    )

    go_repository(
        name = "org_golang_x_oauth2",
        importpath = "golang.org/x/oauth2",
        sum = "h1:dtndE8FcEta75/4kHF3AbpuWzV6f1LjnLrM4pe2SZrw=",
        version = "v0.0.0-20220808172628-8227340efae7",
    )

    go_repository(
        name = "com_github_googleapis_enterprise_certificate_proxy",
        importpath = "github.com/googleapis/enterprise-certificate-proxy",
        sum = "h1:zO8WHNx/MYiAKJ3d5spxZXZE6KHmIQGQcAzwUzV7qQw=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_golang_groupcache",
        importpath = "github.com/golang/groupcache",
        sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
        version = "v0.0.0-20210331224755-41bb18bfe9da",
    )

    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:e6P7q2lk1O+qJJb4BtCQXlK8vWEO8V1ZeuEdJNOqZyg=",
        version = "v0.5.8",
    )

    go_repository(
        name = "com_google_cloud_go_compute",
        importpath = "cloud.google.com/go/compute",
        sum = "h1:NLtR56/eKx9K1s2Tw/4hec2vsU1S3WeKRMj8HXbBo6E=",
        version = "v1.8.0",
    )

    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:kBRZU0PSuI7PspsSb/ChWoVResUcwNVIdpB049pKTiw=",
        version = "v2.5.1",
    )

    go_repository(
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:YXtxp9ymmZjlGzxV7VrYQ8aaQuAgcqxSy6YhDX4I458=",
        version = "v0.103.0",
    )

    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:uF6paiQQebLeSXkrTqHqz0MXhXXS1KgF41eUdBNvxK0=",
        version = "v0.0.0-20220609144429-65e65417b02f",
    )
