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
                "OAuth",
                "OneLoginSDK"
            ],
            path: "OneLoginSDK"
        ),
        .binaryTarget(
            name: "account_login_sdk_noui_core",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.10/account_login_sdk_noui_core.xcframework.zip",
            checksum: "e57d753943b534c894b9c9fa6b74101bede1d170378022bb395e69714ee534bf"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.10/EAccountApiSDK.xcframework.zip",
            checksum: "1f96aee2eb6e4dbc27ee0731a4eb62e8d7901bb92c1cd8c33b934244878a57f8"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.10/TYRZUISDK.xcframework.zip",
            checksum: "ee83d53834460e92cedb47b79078ab613408693adb136c9ce5251b412e920714"
        ),
        .binaryTarget(
            name: "OAuth",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.10/OAuth.xcframework.zip",
            checksum: "94e72e5da0fbb36c8c7c0a1ba6277408ae2f1020c997010883a12cb2740a2c9e"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/1.0.10/OneLoginSDK.xcframework.zip",
            checksum: "36c9472471133266106a3264ea74564b28ef5822f4e1e2bfe4be12978ac58c47"
        )
    ]
)
