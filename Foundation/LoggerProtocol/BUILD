load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "LoggerProtocol",
    module_name = 'LoggerProtocol',

    srcs = glob(["Sources/**/*.swift"]),

    deps = [
        "//Foundation/Kernel",
        ],

    visibility = ["//visibility:public"],
)