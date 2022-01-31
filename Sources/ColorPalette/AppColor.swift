//
// Copyright © 2020 by Hilti Corporation – all rights reserved
//

import UIKit
/// Supported application colors.
///
/// Each case in this enum must be backed by same named color in color xcassets.
///
/// Use ```UIColor``` extension method [appColor(_ appColor:)](x-source-tag://AppColorExtension)
/// to safely access correcponding UIColor objects in code:
///
///        let baseColor = UIColor.appColor(.appBaseColor)
///
/// - Tag: AppColor
public enum AppColor: String {
    case ctaButtonColor // #D2051E
    case primaryButtonColor // #514F54
    case secondaryButtonColor // #E7E4E1
    case btnTitleNormalColor // #FFFFFF
    case secondaryBtnTitleColor // #524F52
    case secBtnBorderColor // #B7B2AA
    case disabledColor // #DDDCDD
    case inputTextBorder // #B7B2AA
    case inputTextError // #D2051E
    case inputTextTitle // #524F52
    case datePickerBGColor // #000000
    case backgroundColorWhite // #FFFFFF
    case textColorBold // #524F54
    case textColorNormal // #524F55
    case switchOffColor // #979598
    case switchOnColor // #52AC49
    case textFieldShadowColor // #000000, opacity: 50%
    case failureColor // #D2051E
    case successColor // #52AC49
    case warningColor // #F3B23E
    case tabSelectionBackgroundColor // #F3F2F2
    case cellSelectedBackgroundColor // #F7F4F2
    case cellSelectedBackgroundDark // #CFCCC5
    case carouselBorderColor // #D7CEBE
    case assetSelectionBorderColor // #D6CEBF
    case appBackgroundColor // #F3F2F0
    case separatorColor // #D6CEBC
    case secondaryTextColor // #544F54
    case attributedtextColor // #534F53
    case sectionHeader // #877F6D
    case borderColor // #E8E5E2
    case appBaseColor // #D2051E
    case buttonColor // #514F54
    case textFieldBorderColor // #B7B2AA
    case errorBorderColor // #FF0000
    case textFieldBorderGrayColor // #DCDBDC
    case disabledButtonBackgroundColor // #DDDBDD
    case carouselViewTitleColor // #FFFFFF
    case cellRowBackgroundColor // #FAFAFA
    case attachmentRowTitleColor // #524F53
    case transferHistoryTitleColor // #757275
    case transferHistoryRowBackgroundColor // #F5F5F5
    case locationAssetInactiveStateBgColor // #FFD7D8
    case locationAssetInactiveStateTextColor // #CE162D
    case criticalBackgroundColor // #FFD7D8
    case criticalTextColor // #D2051E
    case informativeBGColor // #E0F0F9
    case informativeTextColor // #005F96
    case warningBGColor // #FFF3D6
    case warningTextColor // #906300
    case successBGColor // #D8F4DF
    case successTextColor // #117A26
    case tagBGColor // #E5E5E5
    case tagTextColor // #524F53
    case progressBarColor // #D8D8D8
    case progressCounterColor // #8B888B
    case inventoryTitleTextColor // #2E2C2E
    case segmentedControlDarkColor // #514F54
    case segmentedControlLightColor // #F3F1EF
    case inventoryAlertPositiveColor // #19AF37
    case textFieldBackgroundColor // #E7E5E2
    case defaultIconColor // #524F53
    case bottomSheetSeparatorColor // #E7E5E2
    case bottomSheetActionCellTitleEnabledColor // #000000
    case bottomSheetActionCellTitleDisabledColor // #DCDBDC
    case cellTextHeadingColor // #676469
    case cellBoxShadowColor  // #D7CEBD
    case sectionHeaderTitleColor // A0998B
    case sectionHeaderButtonColor // #5C595E
    case headerHeadingColor // #333333
    case transferViewShadowColor // #000000, opacity: 15%
    case assetListQuantityHeaderTextColor // #6B6369
    case titleColorBlack // #000000
    case subTitleGrayColor // #5D595E
    case bluetoothIconEnabledColor // #4196CD
    case bluetoothIconDisabledColor // #AAA8A9
    case alertInfoWhiteColor // # DBD8D4
    case locationMapCircleColor // #4385F4
    case progressWarningColor // #FFAF00
    case badgeBGColor // #D8D8D3
}

/// UIColor AppColor convenience methods
@available(iOS 11.0, *)
public extension UIColor {
    /// Convenience initializer to instantiate UIcolor from AppColor value.
    /// Returns a UIColor instance only if corresponding xcasset color is present.
    ///
    /// - Parameter appColor: [AppColor](x-source-tag://AppColor) value
    /// - Tag: AppColorConvenienceInitializer
    convenience init?(_ appColor: AppColor) {
        self.init(named: appColor.rawValue, in: Bundle.uiColorPaletteBundle, compatibleWith: nil)
    }

    /// UIColor object for supported AppColor
    ///
    /// If the AppColor case does not have an entry in color xcassets,
    /// this method will return ```UIColor.clear```
    ///
    /// - Parameter appColor: [AppColor](x-source-tag://AppColor) value
    /// - Returns: ```UIColor``` from color xcassets if present, otherwise clear color
    /// - Tag: AppColorExtension
    class func appColor(_ appColor: AppColor) -> UIColor {
        return UIColor(appColor) ?? UIColor.clear
    }
}
