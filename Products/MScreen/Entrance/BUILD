load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_swift//proto:swift_proto_library.bzl", "swift_proto_library")
load("@rules_proto//proto:defs.bzl", "proto_library")

proto_library(
    name = "foo",
    srcs = ["Protos/dsl.proto"]
)

swift_proto_library(
    name = "DSLSwift",
    protos = [":foo"]
)

swift_library(
    name = "Entrance",
    srcs = glob(["Sources/**/*.swift"]),
    deps = [
        "//Foundation/Platform",
        "//Foundation/LoggerProtocol",
        "//Foundation/UIFoundation/Controls/SegementedControl",

        "//ThirdLibraries/Kingfisher",
        "//ThirdLibraries/ObjectMapper",
        ":DSLSwift",
        ],
    module_name = "Entrance",
    visibility = ["//visibility:public"],
)
