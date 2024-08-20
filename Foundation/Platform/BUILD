load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Platform",
    srcs = glob(["Sources/**/*.swift"]),
    module_name = 'Platform',

    deps = [
        "//Foundation/Kernel",
        "//Foundation/Logger",
        ],

    visibility = ["//visibility:public"],
)
