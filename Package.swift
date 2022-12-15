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
            path: "OneLoginSDK",
            resources: [
                .process("Assets")
            ]
        ),
        .binaryTarget(
            name: "account_login_sdk_noui_core",
            url: "https://spm-binary-image.s3.cn-north-1.amazonaws.com.cn/account_login_sdk_noui_core.xcframework.zip?x-amz-expect-ip=180.167.192.226&response-content-disposition=attachment&X-Amz-Security-Token=FwoDYXdzEOz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDP7oXbLmk8lalX1b%2BCKqAu6oqgqM8FQ5c%2FQ7Ow7%2FUIDHNgfROnD9F5ZKElQ7RnileqNYN1N9jM52kQJ6nAU14TaYZ1xbbHSUtQ148fXaO5kB9nyvBWDPpMoqTSMzF2qEMvET5hylYKXuFrHGWrDb54Usi7Rg2j8BPgU3eTb2OdZQcDDAhLQ3OyTnv70jNAfeBP6vaAwa6ktDIXhohry0jn14uRt0J%2F%2Bo6jSVlfavz18kHHfcqQuaJ0wtQHih2N4hIOyOXPnl0Oh74EU81I2c94nrlVmrybXvGVlaNauHdgdb943M93S%2FpZQzM9eEmNebWeVaBy%2FdPTUFppvJwy7zDxaJiDYZzz3UClDAi3vIh3fIoGXymkmF6241UDocmLDeaejBS7pHEcshpK%2Bwgs3fgDc5POoBzI4RBP4onqjqnAYywgEvvJgt32T1WMLejLcfdweMx9mib6eAhYP4XpR%2BOoLKq2%2BiJXpCADsfISPRIHlq%2BSVlweklGE%2B2a63cfZuts%2BDAsYzwB%2B%2FCF6wxiEx1i7pbECQBNzY8WLfYjS4C%2FiWkDljLvT2%2BseTo9VYH5Mnms85%2FEwH3VGnpZXHZ15NRilpYE7FCZHrZGhrNdxznW10nlzblH04WK5PPxBUBOMWvpBC%2BpXhU%2B%2Bn9yFAbAfTsh1PhD8NQwanLNeX0tEfOzfZdexwODQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221215T040653Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIATCA54QHSBFLF4BWQ%2F20221215%2Fcn-north-1%2Fs3%2Faws4_request&X-Amz-Signature=c267d5cd89a8e3458175f6d75bd5a69c910c8cb630083266fdc10b7f7de37bf9",
            checksum: "9057de76e820e27af59c4560eb4bc8174014bcba1509735edd66d358767278f7"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://spm-binary-image.s3.cn-north-1.amazonaws.com.cn/EAccountApiSDK.xcframework.zip?x-amz-expect-ip=180.167.192.226&response-content-disposition=attachment&X-Amz-Security-Token=FwoDYXdzEOz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDP7oXbLmk8lalX1b%2BCKqAu6oqgqM8FQ5c%2FQ7Ow7%2FUIDHNgfROnD9F5ZKElQ7RnileqNYN1N9jM52kQJ6nAU14TaYZ1xbbHSUtQ148fXaO5kB9nyvBWDPpMoqTSMzF2qEMvET5hylYKXuFrHGWrDb54Usi7Rg2j8BPgU3eTb2OdZQcDDAhLQ3OyTnv70jNAfeBP6vaAwa6ktDIXhohry0jn14uRt0J%2F%2Bo6jSVlfavz18kHHfcqQuaJ0wtQHih2N4hIOyOXPnl0Oh74EU81I2c94nrlVmrybXvGVlaNauHdgdb943M93S%2FpZQzM9eEmNebWeVaBy%2FdPTUFppvJwy7zDxaJiDYZzz3UClDAi3vIh3fIoGXymkmF6241UDocmLDeaejBS7pHEcshpK%2Bwgs3fgDc5POoBzI4RBP4onqjqnAYywgEvvJgt32T1WMLejLcfdweMx9mib6eAhYP4XpR%2BOoLKq2%2BiJXpCADsfISPRIHlq%2BSVlweklGE%2B2a63cfZuts%2BDAsYzwB%2B%2FCF6wxiEx1i7pbECQBNzY8WLfYjS4C%2FiWkDljLvT2%2BseTo9VYH5Mnms85%2FEwH3VGnpZXHZ15NRilpYE7FCZHrZGhrNdxznW10nlzblH04WK5PPxBUBOMWvpBC%2BpXhU%2B%2Bn9yFAbAfTsh1PhD8NQwanLNeX0tEfOzfZdexwODQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221215T061837Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIATCA54QHSBFLF4BWQ%2F20221215%2Fcn-north-1%2Fs3%2Faws4_request&X-Amz-Signature=fb760762eab75ee77e67ecd99300e02d2d20d17591facd8be3f9fa3d30e1492d",
            checksum: "15fc53d86c58cdb9353a39c96d3bf368a079c5985a89207d248ca59a903f01e7"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://spm-binary-image.s3.cn-north-1.amazonaws.com.cn/TYRZUISDK.xcframework.zip?x-amz-expect-ip=180.167.192.226&response-content-disposition=attachment&X-Amz-Security-Token=FwoDYXdzEOz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDP7oXbLmk8lalX1b%2BCKqAu6oqgqM8FQ5c%2FQ7Ow7%2FUIDHNgfROnD9F5ZKElQ7RnileqNYN1N9jM52kQJ6nAU14TaYZ1xbbHSUtQ148fXaO5kB9nyvBWDPpMoqTSMzF2qEMvET5hylYKXuFrHGWrDb54Usi7Rg2j8BPgU3eTb2OdZQcDDAhLQ3OyTnv70jNAfeBP6vaAwa6ktDIXhohry0jn14uRt0J%2F%2Bo6jSVlfavz18kHHfcqQuaJ0wtQHih2N4hIOyOXPnl0Oh74EU81I2c94nrlVmrybXvGVlaNauHdgdb943M93S%2FpZQzM9eEmNebWeVaBy%2FdPTUFppvJwy7zDxaJiDYZzz3UClDAi3vIh3fIoGXymkmF6241UDocmLDeaejBS7pHEcshpK%2Bwgs3fgDc5POoBzI4RBP4onqjqnAYywgEvvJgt32T1WMLejLcfdweMx9mib6eAhYP4XpR%2BOoLKq2%2BiJXpCADsfISPRIHlq%2BSVlweklGE%2B2a63cfZuts%2BDAsYzwB%2B%2FCF6wxiEx1i7pbECQBNzY8WLfYjS4C%2FiWkDljLvT2%2BseTo9VYH5Mnms85%2FEwH3VGnpZXHZ15NRilpYE7FCZHrZGhrNdxznW10nlzblH04WK5PPxBUBOMWvpBC%2BpXhU%2B%2Bn9yFAbAfTsh1PhD8NQwanLNeX0tEfOzfZdexwODQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221215T061915Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIATCA54QHSBFLF4BWQ%2F20221215%2Fcn-north-1%2Fs3%2Faws4_request&X-Amz-Signature=b4ce2c0fb80429fe3237260c9c27e069cb3e7637b3524b31db51d1f327ec226a",
            checksum: "f8f91f31802ecca3ec26efc4ee558d1d76132744b2fe5c990c465b514351d1e7"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://spm-binary-image.s3.cn-north-1.amazonaws.com.cn/OneLoginSDK.xcframework.zip?x-amz-expect-ip=180.167.192.226&response-content-disposition=attachment&X-Amz-Security-Token=FwoDYXdzEOz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDP7oXbLmk8lalX1b%2BCKqAu6oqgqM8FQ5c%2FQ7Ow7%2FUIDHNgfROnD9F5ZKElQ7RnileqNYN1N9jM52kQJ6nAU14TaYZ1xbbHSUtQ148fXaO5kB9nyvBWDPpMoqTSMzF2qEMvET5hylYKXuFrHGWrDb54Usi7Rg2j8BPgU3eTb2OdZQcDDAhLQ3OyTnv70jNAfeBP6vaAwa6ktDIXhohry0jn14uRt0J%2F%2Bo6jSVlfavz18kHHfcqQuaJ0wtQHih2N4hIOyOXPnl0Oh74EU81I2c94nrlVmrybXvGVlaNauHdgdb943M93S%2FpZQzM9eEmNebWeVaBy%2FdPTUFppvJwy7zDxaJiDYZzz3UClDAi3vIh3fIoGXymkmF6241UDocmLDeaejBS7pHEcshpK%2Bwgs3fgDc5POoBzI4RBP4onqjqnAYywgEvvJgt32T1WMLejLcfdweMx9mib6eAhYP4XpR%2BOoLKq2%2BiJXpCADsfISPRIHlq%2BSVlweklGE%2B2a63cfZuts%2BDAsYzwB%2B%2FCF6wxiEx1i7pbECQBNzY8WLfYjS4C%2FiWkDljLvT2%2BseTo9VYH5Mnms85%2FEwH3VGnpZXHZ15NRilpYE7FCZHrZGhrNdxznW10nlzblH04WK5PPxBUBOMWvpBC%2BpXhU%2B%2Bn9yFAbAfTsh1PhD8NQwanLNeX0tEfOzfZdexwODQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221215T061942Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIATCA54QHSBFLF4BWQ%2F20221215%2Fcn-north-1%2Fs3%2Faws4_request&X-Amz-Signature=aaaacdf96c2059f046bfe409269e61cc360e714163bc570e46d44d0e529fb3a0",
            checksum: "0753b95b07d731b1dc1b39892a831fe8c75bed46f7bb7863fb5b9905c29330fb"
        )
    ]
)
