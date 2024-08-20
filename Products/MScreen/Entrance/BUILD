load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Entrance",
    srcs = glob(["Sources/*.swift"]),
    deps = [
        "//Foundation/Platform",
        "//ThirdLibraries/Kingfisher",
        ],
    module_name = "Entrance",
    visibility = ["//visibility:public"],
)
