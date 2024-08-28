load("@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application",
    "ios_extension",
)
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

load(
    "//build-systems/bazel-utils:plist_fragment.bzl",
    "plist_fragment",
)

ios_extension(
    name = "WidgetExtension",
    bundle_id = "12particels.com.widgets",
    minimum_os_version = '17.0',
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        ":WidgetInfoPlist",
        ":VersionInfoPlist",
        ":BuildNumberInfoPlist",
    ],
    deps = [
        "//Products/MScreen/Widgets:WidgetsLib"
    ],
    visibility = [
        "//visibility:public",
    ],
)




# The Main Application Definitions
ios_application(
    name = "iOSApp",
    bundle_id = "12particels.com",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Resources/Info.plist"],
    minimum_os_version = "15.0",
    visibility = ["//visibility:public"],

    extensions = select({
        "//conditions:default": [
            ":WidgetExtension",
        ]
    }),

    deps = [
        "//Products/MScreen/Entrance",
        ],

     
)
#
#ios_extension(
#    
#)

xcodeproj(
    name = "xcodeproj",
    build_mode = "bazel",
    project_name = "iOSApp",
    tags = ["manual"],
    top_level_targets = [
        ":iOSApp",
        ":WidgetExtension",
    ],
)


# tools
genrule(
    name = "lint",
    srcs = [],
    outs = ["lint.sh"],
    cmd = """
echo "set -e" > "$@"
echo "./$(location @buildifier_prebuilt//:buildifier) -lint fix -mode fix -r \\$$BUILD_WORKSPACE_DIRECTORY" >> "$@"
echo "./$(location @SwiftLint//:swiftlint) --fix \\$$BUILD_WORKSPACE_DIRECTORY" >> "$@"
""",
    executable = True,
    tools = [
        "@SwiftLint//:swiftlint",
        "@buildifier_prebuilt//:buildifier",
    ],
)



plist_fragment(
    name = "WidgetInfoPlist",
    extension = "plist",
    template =
    """
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleIdentifier</key>
    <string>12particels.com.widgets</string>
    <key>CFBundleName</key>
    <string>Telegram</string>
    <key>CFBundlePackageType</key>
    <string>XPC!</string>
    <key>NSExtension</key>
    <dict>
        <key>NSExtensionPointIdentifier</key>
        <string>com.apple.widgetkit-extension</string>
    </dict>
    <key>UIRequiredDeviceCapabilities</key>
    <array>
        <string>arm64</string>
    </array>
    """
)

plist_fragment(
    name = "VersionInfoPlist",
    extension = "plist",
    template =
    """
    <key>CFBundleShortVersionString</key>
    <string>1.0</string>
    """
)


plist_fragment(
    name = "BuildNumberInfoPlist",
    extension = "plist",
    template =
    """
    <key>CFBundleVersion</key>
    <string>1</string>
    """
)
