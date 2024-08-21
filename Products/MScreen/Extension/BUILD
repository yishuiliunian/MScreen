load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Extension",
    srcs = glob(["Sources/*.swift"]),
    deps = [
        "//Foundation/Platform",
        "//ThirdLibraries/Kingfisher",
        ],
    module_name = "Extension",
    visibility = ["//visibility:public"],
)
