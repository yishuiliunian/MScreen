load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Logger",
    srcs = glob(["Sources/**/*.swift"]),
    module_name = 'Logger',

    deps = [
        "//Foundation/Kernel",
        "//ThirdLibraries/CocoaLumberjack:CocoaLumberjackSwift",
        ],

    visibility = ["//visibility:public"],
)