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
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.8/account_login_sdk_noui_core.xcframework.zip",
            checksum: "3ac333eb98763f7150ebe43ff1c88a2c2ee5066d9eb0ff1e66b15020ed6be9f6"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.8/EAccountApiSDK.xcframework.zip",
            checksum: "8217af0b8ecddd3a90e37856c4ef716df1005dc39e4b7fa8b9ee10628f15baf3"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.8/TYRZUISDK.xcframework.zip",
            checksum: "8edf7c6b57bc68164dda131e3bade1e57c8a17e2792505ed33bf210c939a16ea"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.8/OneLoginSDK.xcframework.zip",
            checksum: "5ee770b1e1733bbcc6e04e17b2de79eb6e4edbfe6635d189c2b619f059d36c67"
        )
    ]
)
