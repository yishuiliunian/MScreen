load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Entrance",
    srcs = glob(["Sources/**/*.swift"]),
    deps = [
        "//Foundation/Platform",
        "//Foundation/LoggerProtocol",
        "//Foundation/UIFoundation/Controls/SegementedControl",

        "//ThirdLibraries/Kingfisher",
        "//ThirdLibraries/ObjectMapper",
        ],
    module_name = "Entrance",
    visibility = ["//visibility:public"],
)
