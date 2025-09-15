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
                "EAccountApiSDK",
                "TYRZUISDK",
                "OAuth",
                "OneLoginSDK"
            ],
            path: "OneLoginSDK"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/2.9.8/EAccountApiSDK.xcframework.zip",
            checksum: "e1c7f1ac84313326c7db17edb0b98cb0720b1ad765497d365153de3cf7217579"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/2.9.8/TYRZUISDK.xcframework.zip",
            checksum: "9b53621276439013c4a0d749074878c2ec543dc17d195d9cc16059fc0bded0ca"
        ),
        .binaryTarget(
            name: "OAuth",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/2.9.8/OAuth.xcframework.zip",
            checksum: "e333f1af349b20c0bbebd2594fbefc25d32535c4f028af5ca97f110188a3a3a0"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://github.com/adidasjc/OneLoginSDK/releases/download/2.9.8/OneLoginSDK.xcframework.zip",
            checksum: "11a76eefe44d02dbc826f81c64fdb8af1c098287d8797a6961cfbcd219aa51a3"
        )
    ]
)
