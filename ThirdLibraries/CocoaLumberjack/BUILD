load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")


objc_library(
    name = "CocoaLumberjack",
    enable_modules = True,
    module_name = "CocoaLumberjack",
    srcs = glob([
                "Sources/CocoaLumberjack/**/*.m",
                "Sources/CocoaLumberjack/include/CocoaLumberjack/*.h",
    ]),
    hdrs = glob([
        "Sources/CocoaLumberjack/include/CocoaLumberjack/*.h",
        "Sources/CocoaLumberjack/DDFileLogger+Internal.h",
        "Sources/CocoaLumberjackSwiftSupport/include/CocoaLumberjackSwiftSupport/SwiftLogLevel.h"
        ]),

    includes = [
        "Sources/CocoaLumberjack/include",
        "Sources/CocoaLumberjack",
    ],
    visibility = ["//visibility:public"],
  
)

swift_library(
    name = "CocoaLumberjackSwift",
    srcs = glob(["Sources/CocoaLumberjackSwift/**/*.swift"]),
    module_name = 'CocoaLumberjackSwift',
    visibility = ["//visibility:public"],
    deps = [
        ":CocoaLumberjack"
    ]
)