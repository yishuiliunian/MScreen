load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Kernel",
    srcs = glob(["Sources/**/*.swift"]),
    module_name = 'Kernel',

    deps = [
        "//ThirdLibraries/Swinject"
        ],

    visibility = ["//visibility:public"],
)