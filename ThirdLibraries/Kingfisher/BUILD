load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Kingfisher",
    srcs = glob(
        ["Sources/**/*.swift"],
        exclude = [
            'Sources/Documentation.docc/**/*.swift',
        ],
        ),
    module_name = 'Kingfisher',

    visibility = ["//visibility:public"],
)
