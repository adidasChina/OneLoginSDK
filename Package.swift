// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OneLoginSDK",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "OneLoginSDKTarget",
            targets: ["OneLoginSDKTarget"]
        )
    ],
    targets: [
        .target(
            name: "OneLoginSDKTarget",
            dependencies: [
                "account_login_sdk_noui_core",
                "EAccountApiSDK",
                "TYRZUISDK",
                "OneLoginSDK"
            ],
            path: "OneLoginSDK"
        ),
        .binaryTarget(
            name: "account_login_sdk_noui_core",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.7/account_login_sdk_noui_core.xcframework.zip",
            checksum: "ea322747a26b87065ebcd000214fbd8dadb000b7b0c6b095b810beed1db0f8c8"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.7/EAccountApiSDK.xcframework.zip",
            checksum: "a1d74791e3fa98c23ec481d9159f034a488af25dab8aa0f2694568a7ffca7e4a"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.7/TYRZUISDK.xcframework.zip",
            checksum: "7f6a3f33ff1bad5f8cc5adfc0fad1498f5dcc03d86048f00ee7e172f054de742"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.7/OneLoginSDK.xcframework.zip",
            checksum: "eec8b789e1425147959c2d2f88fd9918e484074a1e82b19b10740e5d46b3917b"
        )
    ]
)
