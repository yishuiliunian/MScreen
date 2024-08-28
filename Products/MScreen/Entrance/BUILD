load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Entrance",
    srcs = glob(["Sources/*.swift"]),
    deps = [
        "//Foundation/Platform",
        "//Foundation/LoggerProtocol",
        "//ThirdLibraries/Kingfisher",
        "//Foundation/UIFoundation/Controls/SegementedControl",
        ],
    module_name = "Entrance",
    visibility = ["//visibility:public"],
)
