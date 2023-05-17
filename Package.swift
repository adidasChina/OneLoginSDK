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
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.9/account_login_sdk_noui_core.xcframework.zip",
            checksum: "9a4c5b893e57ca3bb19472c0fa6c1b3c09e73260d61bc14c37ae1b61d1e7c919"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.9/EAccountApiSDK.xcframework.zip",
            checksum: "14a886b01e2f8a343f76072f339ff0b1f0537aefe85f8707e2b783026845c808"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.9/TYRZUISDK.xcframework.zip",
            checksum: "16ba5a561fad52f9bfdaa4268f684278fc481483f1b783d823eb77d6ba2a5650"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.9/OneLoginSDK.xcframework.zip",
            checksum: "b913c48f3955f72f422b3f787181bb5a7f3747e198d75e376f482f0c4f4aa14d"
        )
    ]
)
