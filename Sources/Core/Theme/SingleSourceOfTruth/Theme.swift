/***
 *
 *  ███╗   ██╗ █████╗ ████████╗██████╗ ███████╗   ████████╗██╗  ██╗███████╗███╗   ███╗███████╗███████╗
 *  ████╗  ██║██╔══██╗╚══██╔══╝██╔══██╗██╔════╝   ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝██╔════╝
 *  ██╔██╗ ██║███████║   ██║   ██║  ██║███████╗█████╗██║   ███████║█████╗  ██╔████╔██║█████╗  ███████╗
 *  ██║╚██╗██║██╔══██║   ██║   ██║  ██║╚════██║╚════╝██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  ╚════██║
 *  ██║ ╚████║██║  ██║   ██║   ██████╔╝███████║      ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗███████║
 *  ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚══════╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝
 *
 *  https://github.com/natura-cosmeticos/natds-commons/tree/master/packages/natds-themes
 *
 *  Generated by natds-themes in Thu Aug 19 2021
 *  Do not edit this file.
 *
 *  If you have any trouble or a feature request, open an issue:
 *  https://github.com/natura-cosmeticos/natds-commons/issues
 *
 */

protocol Theme {
    var tokens: Tokens { get }
    var components: Components { get }
}

protocol Tokens {
    var assetFontFileDisplay: String { get }
    var assetFontFileHeadline: String { get }
    var assetFontFileBodyRegular: String { get }
    var assetFontFileBodyBold: String { get }
    var assetBrandNeutralAFile: String { get }
    var assetBrandNeutralAWidth: CGFloat { get }
    var assetBrandNeutralAHeight: CGFloat { get }
    var assetBrandNeutralBFile: String { get }
    var assetBrandNeutralBWidth: CGFloat { get }
    var assetBrandNeutralBHeight: CGFloat { get }
    var assetBrandCustomAFile: String { get }
    var assetBrandCustomAWidth: CGFloat { get }
    var assetBrandCustomAHeight: CGFloat { get }
    var assetBrandCustomBFile: String { get }
    var assetBrandCustomBWidth: CGFloat { get }
    var assetBrandCustomBHeight: CGFloat { get }
    var borderRadiusNone: CGFloat { get }
    var borderRadiusSmall: CGFloat { get }
    var borderRadiusMedium: CGFloat { get }
    var borderRadiusLarge: CGFloat { get }
    var colorPrimary: String { get }
    var colorOnPrimary: String { get }
    var colorPrimaryLight: String { get }
    var colorOnPrimaryLight: String { get }
    var colorPrimaryDark: String { get }
    var colorOnPrimaryDark: String { get }
    var colorSecondary: String { get }
    var colorOnSecondary: String { get }
    var colorSecondaryLight: String { get }
    var colorOnSecondaryLight: String { get }
    var colorSecondaryDark: String { get }
    var colorOnSecondaryDark: String { get }
    var colorBackground: String { get }
    var colorOnBackground: String { get }
    var colorSurface: String { get }
    var colorOnSurface: String { get }
    var colorHighlight: String { get }
    var colorHighEmphasis: String { get }
    var colorMediumEmphasis: String { get }
    var colorLowEmphasis: String { get }
    var colorLink: String { get }
    var colorOnLink: String { get }
    var colorSuccess: String { get }
    var colorOnSuccess: String { get }
    var colorWarning: String { get }
    var colorOnWarning: String { get }
    var colorAlert: String { get }
    var colorOnAlert: String { get }
    var elevationNoneShadowColor: String { get }
    var elevationNoneShadowOffsetWidth: CGFloat { get }
    var elevationNoneShadowOffsetHeight: CGFloat { get }
    var elevationNoneShadowRadius: CGFloat { get }
    var elevationNoneShadowOpacity: Float { get }
    var elevationMicroShadowColor: String { get }
    var elevationMicroShadowOffsetWidth: CGFloat { get }
    var elevationMicroShadowOffsetHeight: CGFloat { get }
    var elevationMicroShadowRadius: CGFloat { get }
    var elevationMicroShadowOpacity: Float { get }
    var elevationTinyShadowColor: String { get }
    var elevationTinyShadowOffsetWidth: CGFloat { get }
    var elevationTinyShadowOffsetHeight: CGFloat { get }
    var elevationTinyShadowRadius: CGFloat { get }
    var elevationTinyShadowOpacity: Float { get }
    var elevationSmallShadowColor: String { get }
    var elevationSmallShadowOffsetWidth: CGFloat { get }
    var elevationSmallShadowOffsetHeight: CGFloat { get }
    var elevationSmallShadowRadius: CGFloat { get }
    var elevationSmallShadowOpacity: Float { get }
    var elevationMediumShadowColor: String { get }
    var elevationMediumShadowOffsetWidth: CGFloat { get }
    var elevationMediumShadowOffsetHeight: CGFloat { get }
    var elevationMediumShadowRadius: CGFloat { get }
    var elevationMediumShadowOpacity: Float { get }
    var elevationLargeShadowColor: String { get }
    var elevationLargeShadowOffsetWidth: CGFloat { get }
    var elevationLargeShadowOffsetHeight: CGFloat { get }
    var elevationLargeShadowRadius: CGFloat { get }
    var elevationLargeShadowOpacity: Float { get }
    var elevationLargeXShadowColor: String { get }
    var elevationLargeXShadowOffsetWidth: CGFloat { get }
    var elevationLargeXShadowOffsetHeight: CGFloat { get }
    var elevationLargeXShadowRadius: CGFloat { get }
    var elevationLargeXShadowOpacity: Float { get }
    var elevationLargeXXShadowColor: String { get }
    var elevationLargeXXShadowOffsetWidth: CGFloat { get }
    var elevationLargeXXShadowOffsetHeight: CGFloat { get }
    var elevationLargeXXShadowRadius: CGFloat { get }
    var elevationLargeXXShadowOpacity: Float { get }
    var elevationHugeShadowColor: String { get }
    var elevationHugeShadowOffsetWidth: CGFloat { get }
    var elevationHugeShadowOffsetHeight: CGFloat { get }
    var elevationHugeShadowRadius: CGFloat { get }
    var elevationHugeShadowOpacity: Float { get }
    var elevationHugeXShadowColor: String { get }
    var elevationHugeXShadowOffsetWidth: CGFloat { get }
    var elevationHugeXShadowOffsetHeight: CGFloat { get }
    var elevationHugeXShadowRadius: CGFloat { get }
    var elevationHugeXShadowOpacity: Float { get }
    var elevationHugeXXShadowColor: String { get }
    var elevationHugeXXShadowOffsetWidth: CGFloat { get }
    var elevationHugeXXShadowOffsetHeight: CGFloat { get }
    var elevationHugeXXShadowRadius: CGFloat { get }
    var elevationHugeXXShadowOpacity: Float { get }
    var opacityTransparent: CGFloat { get }
    var opacityLower: CGFloat { get }
    var opacityVeryLow: CGFloat { get }
    var opacityLow: CGFloat { get }
    var opacityMediumLow: CGFloat { get }
    var opacityDisabledLow: CGFloat { get }
    var opacityDisabled: CGFloat { get }
    var opacityMedium: CGFloat { get }
    var opacityMediumHigh: CGFloat { get }
    var opacityHigh: CGFloat { get }
    var opacityVeryHigh: CGFloat { get }
    var opacityOpaque: CGFloat { get }
    var sizeNone: CGFloat { get }
    var sizeMicro: CGFloat { get }
    var sizeTiny: CGFloat { get }
    var sizeSmall: CGFloat { get }
    var sizeStandard: CGFloat { get }
    var sizeSemi: CGFloat { get }
    var sizeSemiX: CGFloat { get }
    var sizeMedium: CGFloat { get }
    var sizeMediumX: CGFloat { get }
    var sizeLarge: CGFloat { get }
    var sizeLargeX: CGFloat { get }
    var sizeLargeXX: CGFloat { get }
    var sizeLargeXXX: CGFloat { get }
    var sizeHuge: CGFloat { get }
    var sizeHugeX: CGFloat { get }
    var sizeHugeXX: CGFloat { get }
    var sizeHugeXXX: CGFloat { get }
    var sizeVeryHuge: CGFloat { get }
    var spacingNone: CGFloat { get }
    var spacingMicro: CGFloat { get }
    var spacingTiny: CGFloat { get }
    var spacingSmall: CGFloat { get }
    var spacingStandard: CGFloat { get }
    var spacingSemi: CGFloat { get }
    var spacingLarge: CGFloat { get }
    var spacingXLarge: CGFloat { get }
    var typographyFontFamilyPrimary: String { get }
    var typographyFontFamilySecondary: String { get }
    var typographyFontFamilyBranding: String { get }
    var typographyFontFamilyCode: String { get }
    var typographyLineHeightReset: CGFloat { get }
    var typographyLineHeightSmall: CGFloat { get }
    var typographyLineHeightMedium: CGFloat { get }
    var typographyLineHeightLarge: CGFloat { get }
    var typographyFontWeightRegular: UIFont.Weight { get }
    var typographyFontWeightMedium: UIFont.Weight { get }
    var typographyDisplayFontFamily: String { get }
    var typographyDisplayFontWeight: UIFont.Weight { get }
    var typographyHeadlineFontFamily: String { get }
    var typographyHeadlineFontWeight: UIFont.Weight { get }
    var typographyBodyRegularFontFamily: String { get }
    var typographyBodyRegularFontWeight: UIFont.Weight { get }
    var typographyBodyBoldFontFamily: String { get }
    var typographyBodyBoldFontWeight: UIFont.Weight { get }
    var typographyFallbackFontFamily: String { get }
    var typographyFallbackFontWeight: UIFont.Weight { get }
}

protocol Components {
    var badgeLabelFontSize: CGFloat { get }
    var badgeLabelLetterSpacing: CGFloat { get }
    var badgeLabelLineHeight: CGFloat { get }
    var badgeLabelPrimaryFontFamily: String { get }
    var badgeLabelPrimaryFontWeight: UIFont.Weight { get }
    var badgeLabelFallbackFontFamily: String { get }
    var badgeLabelFallbackFontWeight: UIFont.Weight { get }
    var badgeStandardHeight: CGFloat { get }
    var badgeStandardBorderRadius: CGFloat { get }
    var badgeDotHeight: CGFloat { get }
    var badgeDotBorderRadius: CGFloat { get }
    var badgeColorPrimaryLabel: String { get }
    var badgeColorPrimaryBackground: String { get }
    var badgeColorSecondaryLabel: String { get }
    var badgeColorSecondaryBackground: String { get }
    var badgeColorSuccessLabel: String { get }
    var badgeColorSuccessBackground: String { get }
    var badgeColorAlertLabel: String { get }
    var badgeColorAlertBackground: String { get }
    var buttonDefaultFontSize: CGFloat { get }
    var buttonDefaultFontWeight: UIFont.Weight { get }
    var buttonDefaultLetterSpacing: CGFloat { get }
    var buttonDefaultLineHeight: CGFloat { get }
    var buttonLabelFontSize: CGFloat { get }
    var buttonLabelLetterSpacing: CGFloat { get }
    var buttonLabelLineHeight: CGFloat { get }
    var buttonLabelPrimaryFontFamily: String { get }
    var buttonLabelPrimaryFontWeight: UIFont.Weight { get }
    var buttonLabelFallbackFontFamily: String { get }
    var buttonLabelFallbackFontWeight: UIFont.Weight { get }
    var buttonBorderRadius: CGFloat { get }
    var buttonContainedColorEnableBackground: String { get }
    var buttonContainedColorEnableBorder: String { get }
    var buttonContainedColorEnableLabel: String { get }
    var buttonContainedColorDisableBackground: String { get }
    var buttonContainedColorDisableBorder: String { get }
    var buttonContainedColorDisableLabel: String { get }
    var buttonContainedColorHoverBackground: String { get }
    var buttonContainedColorHoverBorder: String { get }
    var buttonContainedColorHoverLabel: String { get }
    var buttonContainedColorFocusBackground: String { get }
    var buttonContainedColorFocusBorder: String { get }
    var buttonContainedColorFocusLabel: String { get }
    var buttonOutlinedColorEnableBackground: String { get }
    var buttonOutlinedColorEnableBorder: String { get }
    var buttonOutlinedColorEnableLabel: String { get }
    var buttonOutlinedColorDisableBackground: String { get }
    var buttonOutlinedColorDisableBorder: String { get }
    var buttonOutlinedColorDisableLabel: String { get }
    var buttonOutlinedColorHoverBackground: String { get }
    var buttonOutlinedColorHoverBorder: String { get }
    var buttonOutlinedColorHoverLabel: String { get }
    var buttonOutlinedColorFocusBackground: String { get }
    var buttonOutlinedColorFocusBorder: String { get }
    var buttonOutlinedColorFocusLabel: String { get }
    var buttonTextColorEnableBackground: String { get }
    var buttonTextColorEnableBorder: String { get }
    var buttonTextColorEnableLabel: String { get }
    var buttonTextColorDisableBackground: String { get }
    var buttonTextColorDisableBorder: String { get }
    var buttonTextColorDisableLabel: String { get }
    var buttonTextColorHoverBackground: String { get }
    var buttonTextColorHoverBorder: String { get }
    var buttonTextColorHoverLabel: String { get }
    var buttonTextColorFocusBackground: String { get }
    var buttonTextColorFocusBorder: String { get }
    var buttonTextColorFocusLabel: String { get }
    var heading1FontSize: CGFloat { get }
    var heading1FontWeight: UIFont.Weight { get }
    var heading1LetterSpacing: CGFloat { get }
    var heading2FontSize: CGFloat { get }
    var heading2FontWeight: UIFont.Weight { get }
    var heading2LetterSpacing: CGFloat { get }
    var heading3FontSize: CGFloat { get }
    var heading3FontWeight: UIFont.Weight { get }
    var heading3LetterSpacing: CGFloat { get }
    var heading4FontSize: CGFloat { get }
    var heading4FontWeight: UIFont.Weight { get }
    var heading4LetterSpacing: CGFloat { get }
    var heading5FontSize: CGFloat { get }
    var heading5FontWeight: UIFont.Weight { get }
    var heading5LetterSpacing: CGFloat { get }
    var heading6FontSize: CGFloat { get }
    var heading6FontWeight: UIFont.Weight { get }
    var heading6LetterSpacing: CGFloat { get }
    var subtitle1FontSize: CGFloat { get }
    var subtitle1FontWeight: UIFont.Weight { get }
    var subtitle1LetterSpacing: CGFloat { get }
    var subtitle2FontSize: CGFloat { get }
    var subtitle2FontWeight: UIFont.Weight { get }
    var subtitle2LetterSpacing: CGFloat { get }
    var body1FontSize: CGFloat { get }
    var body1FontWeight: UIFont.Weight { get }
    var body1LetterSpacing: CGFloat { get }
    var body2FontSize: CGFloat { get }
    var body2FontWeight: UIFont.Weight { get }
    var body2LetterSpacing: CGFloat { get }
    var captionFontSize: CGFloat { get }
    var captionFontWeight: UIFont.Weight { get }
    var captionLetterSpacing: CGFloat { get }
    var overlineFontSize: CGFloat { get }
    var overlineFontWeight: UIFont.Weight { get }
    var overlineLetterSpacing: CGFloat { get }
}
