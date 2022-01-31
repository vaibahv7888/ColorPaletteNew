//
// Copyright © 2020 by Hilti Corporation – all rights reserved
//

import Foundation

private let uiColorPaletteBundleName = "ColorPalette"
private let uiColorPaletteBundleId = "com.hilti.mobileq.ColorPalette"

extension Bundle {
    public static var uiColorPaletteBundle: Bundle? {
        return Bundle(identifier: uiColorPaletteBundleId)
    }
}
