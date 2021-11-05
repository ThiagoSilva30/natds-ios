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

struct AvonLightTheme: Theme {
    let tokens: Tokens = AvonLightTokens()
    let components: Components = AvonLightComponents()
}

struct AvonLightTokens: Tokens {
    let assetFontFileDisplay = "Montserrat-Bold"
    let assetFontFileHeadline = "Montserrat-SemiBold"
    let assetFontFileBodyRegular = "Montserrat-Regular"
    let assetFontFileBodyBold = "Montserrat-Bold"
    let assetBrandNeutralAFile = "avon-a-official"
    let assetBrandNeutralAWidth: CGFloat = 256
    let assetBrandNeutralAHeight: CGFloat = 58
    let assetBrandNeutralBFile = "avon-a-official"
    let assetBrandNeutralBWidth: CGFloat = 256
    let assetBrandNeutralBHeight: CGFloat = 58
    let assetBrandCustomAFile = "avon-a-custom"
    let assetBrandCustomAWidth: CGFloat = 256
    let assetBrandCustomAHeight: CGFloat = 58
    let assetBrandCustomBFile = "avon-a-custom"
    let assetBrandCustomBWidth: CGFloat = 256
    let assetBrandCustomBHeight: CGFloat = 58
    let borderRadiusNone: CGFloat = 0
    let borderRadiusSmall: CGFloat = 2
    let borderRadiusMedium: CGFloat = 4
    let borderRadiusLarge: CGFloat = 8
    let colorPrimary = "#7F28C4"
    let colorOnPrimary = "#FFFFFF"
    let colorPrimaryLight = "#B35BF8"
    let colorOnPrimaryLight = "#000000"
    let colorPrimaryDark = "#4B0092"
    let colorOnPrimaryDark = "#000000"
    let colorSecondary = "#E2197C"
    let colorOnSecondary = "#FFFFFF"
    let colorSecondaryLight = "#FF5EAB"
    let colorOnSecondaryLight = "#000000"
    let colorSecondaryDark = "#AA0050"
    let colorOnSecondaryDark = "#FFFFFF"
    let colorBackground = "#FAFAFA"
    let colorOnBackground = "#333333"
    let colorSurface = "#FFFFFF"
    let colorOnSurface = "#333333"
    let colorHighlight = "#000000"
    let colorHighEmphasis = "#333333"
    let colorMediumEmphasis = "#777777"
    let colorLowEmphasis = "#BBBBBB"
    let colorLink = "#227BBD"
    let colorOnLink = "#FFFFFF"
    let colorSuccess = "#569A32"
    let colorOnSuccess = "#FFFFFF"
    let colorWarning = "#FCC433"
    let colorOnWarning = "#333333"
    let colorAlert = "#E74627"
    let colorOnAlert = "#FFFFFF"
    let elevationNoneShadowColor = "nil"
    let elevationNoneShadowOffsetWidth: CGFloat = 0
    let elevationNoneShadowOffsetHeight: CGFloat = -3
    let elevationNoneShadowRadius: CGFloat = 3
    let elevationNoneShadowOpacity: Float = 0
    let elevationMicroShadowColor = "#000000"
    let elevationMicroShadowOffsetWidth: CGFloat = 0
    let elevationMicroShadowOffsetHeight: CGFloat = 1
    let elevationMicroShadowRadius: CGFloat = 1
    let elevationMicroShadowOpacity: Float = 0.14
    let elevationTinyShadowColor = "#000000"
    let elevationTinyShadowOffsetWidth: CGFloat = 0
    let elevationTinyShadowOffsetHeight: CGFloat = 2
    let elevationTinyShadowRadius: CGFloat = 2
    let elevationTinyShadowOpacity: Float = 0.14
    let elevationSmallShadowColor = "#000000"
    let elevationSmallShadowOffsetWidth: CGFloat = 0
    let elevationSmallShadowOffsetHeight: CGFloat = 3
    let elevationSmallShadowRadius: CGFloat = 4
    let elevationSmallShadowOpacity: Float = 0.14
    let elevationMediumShadowColor = "#000000"
    let elevationMediumShadowOffsetWidth: CGFloat = 0
    let elevationMediumShadowOffsetHeight: CGFloat = 4
    let elevationMediumShadowRadius: CGFloat = 5
    let elevationMediumShadowOpacity: Float = 0.14
    let elevationLargeShadowColor = "#000000"
    let elevationLargeShadowOffsetWidth: CGFloat = 0
    let elevationLargeShadowOffsetHeight: CGFloat = 6
    let elevationLargeShadowRadius: CGFloat = 10
    let elevationLargeShadowOpacity: Float = 0.14
    let elevationLargeXShadowColor = "#000000"
    let elevationLargeXShadowOffsetWidth: CGFloat = 0
    let elevationLargeXShadowOffsetHeight: CGFloat = 8
    let elevationLargeXShadowRadius: CGFloat = 10
    let elevationLargeXShadowOpacity: Float = 0.14
    let elevationLargeXXShadowColor = "#000000"
    let elevationLargeXXShadowOffsetWidth: CGFloat = 0
    let elevationLargeXXShadowOffsetHeight: CGFloat = 9
    let elevationLargeXXShadowRadius: CGFloat = 12
    let elevationLargeXXShadowOpacity: Float = 0.14
    let elevationHugeShadowColor = "#000000"
    let elevationHugeShadowOffsetWidth: CGFloat = 0
    let elevationHugeShadowOffsetHeight: CGFloat = 12
    let elevationHugeShadowRadius: CGFloat = 17
    let elevationHugeShadowOpacity: Float = 0.14
    let elevationHugeXShadowColor = "#000000"
    let elevationHugeXShadowOffsetWidth: CGFloat = 0
    let elevationHugeXShadowOffsetHeight: CGFloat = 16
    let elevationHugeXShadowRadius: CGFloat = 24
    let elevationHugeXShadowOpacity: Float = 0.14
    let elevationHugeXXShadowColor = "#000000"
    let elevationHugeXXShadowOffsetWidth: CGFloat = 0
    let elevationHugeXXShadowOffsetHeight: CGFloat = 24
    let elevationHugeXXShadowRadius: CGFloat = 38
    let elevationHugeXXShadowOpacity: Float = 0.14
    let opacityTransparent: CGFloat = 0
    let opacityLower: CGFloat = 0.04
    let opacityVeryLow: CGFloat = 0.08
    let opacityLow: CGFloat = 0.12
    let opacityMediumLow: CGFloat = 0.16
    let opacityDisabledLow: CGFloat = 0.24
    let opacityDisabled: CGFloat = 0.32
    let opacityMedium: CGFloat = 0.48
    let opacityMediumHigh: CGFloat = 0.56
    let opacityHigh: CGFloat = 0.64
    let opacityVeryHigh: CGFloat = 0.8
    let opacityOpaque: CGFloat = 1
    let sizeNone: CGFloat = 0
    let sizeMicro: CGFloat = 4
    let sizeTiny: CGFloat = 8
    let sizeSmall: CGFloat = 16
    let sizeStandard: CGFloat = 24
    let sizeSemi: CGFloat = 32
    let sizeSemiX: CGFloat = 40
    let sizeMedium: CGFloat = 48
    let sizeMediumX: CGFloat = 56
    let sizeLarge: CGFloat = 64
    let sizeLargeX: CGFloat = 72
    let sizeLargeXX: CGFloat = 80
    let sizeLargeXXX: CGFloat = 88
    let sizeHuge: CGFloat = 96
    let sizeHugeX: CGFloat = 128
    let sizeHugeXX: CGFloat = 144
    let sizeHugeXXX: CGFloat = 192
    let sizeVeryHuge: CGFloat = 256
    let spacingNone: CGFloat = 0
    let spacingMicro: CGFloat = 4
    let spacingTiny: CGFloat = 8
    let spacingSmall: CGFloat = 16
    let spacingStandard: CGFloat = 24
    let spacingSemi: CGFloat = 32
    let spacingLarge: CGFloat = 48
    let spacingXLarge: CGFloat = 64
    let typographyFontFamilyPrimary = "San Francisco"
    let typographyFontFamilySecondary = "sans-serif"
    let typographyFontFamilyBranding = "Helvetica Now"
    let typographyFontFamilyCode = "SF Mono"
    let typographyLineHeightReset: CGFloat = 1
    let typographyLineHeightSmall: CGFloat = 1.25
    let typographyLineHeightMedium: CGFloat = 1.5
    let typographyLineHeightLarge: CGFloat = 2
    let typographyFontWeightRegular: UIFont.Weight = .regular
    let typographyFontWeightMedium: UIFont.Weight = .medium
    let typographyDisplayFontFamily = "Montserrat"
    let typographyDisplayFontWeight: UIFont.Weight = .bold
    let typographyHeadlineFontFamily = "Montserrat"
    let typographyHeadlineFontWeight: UIFont.Weight = .semibold
    let typographyBodyRegularFontFamily = "Montserrat"
    let typographyBodyRegularFontWeight: UIFont.Weight = .regular
    let typographyBodyBoldFontFamily = "Montserrat"
    let typographyBodyBoldFontWeight: UIFont.Weight = .bold
    let typographyFallbackFontFamily = "San Francisco"
    let typographyFallbackFontWeight: UIFont.Weight = .regular
}
struct AvonLightComponents: Components {
    let badgeLabelFontSize: CGFloat = 12
    let badgeLabelLetterSpacing: CGFloat = 0.16
    let badgeLabelLineHeight: CGFloat = 1.5
    let badgeLabelPrimaryFontFamily = "San Francisco"
    let badgeLabelPrimaryFontWeight: UIFont.Weight = .regular
    let badgeLabelFallbackFontFamily = "San Francisco"
    let badgeLabelFallbackFontWeight: UIFont.Weight = .regular
    let badgeStandardHeight: CGFloat = 16
    let badgeStandardBorderRadius: CGFloat = 8
    let badgeDotHeight: CGFloat = 8
    let badgeDotBorderRadius: CGFloat = 4
    let badgeColorPrimaryLabel = "#FFFFFF"
    let badgeColorPrimaryBackground = "#7F28C4"
    let badgeColorSecondaryLabel = "#FFFFFF"
    let badgeColorSecondaryBackground = "#E2197C"
    let badgeColorSuccessLabel = "#FFFFFF"
    let badgeColorSuccessBackground = "#569A32"
    let badgeColorAlertLabel = "#FFFFFF"
    let badgeColorAlertBackground = "#E74627"
    let buttonDefaultFontSize: CGFloat = 14
    let buttonDefaultFontWeight: UIFont.Weight = .medium
    let buttonDefaultLetterSpacing: CGFloat = 0.44
    let buttonDefaultLineHeight: CGFloat = 1.5
    let buttonLabelFontSize: CGFloat = 14
    let buttonLabelLetterSpacing: CGFloat = 0.44
    let buttonLabelLineHeight: CGFloat = 1.5
    let buttonLabelPrimaryFontFamily = "San Francisco"
    let buttonLabelPrimaryFontWeight: UIFont.Weight = .medium
    let buttonLabelFallbackFontFamily = "San Francisco"
    let buttonLabelFallbackFontWeight: UIFont.Weight = .medium
    let buttonBorderRadius: CGFloat = 4
    let buttonContainedColorEnableBackground = "#7F28C4"
    let buttonContainedColorEnableBorder = "#FFFFFF00"
    let buttonContainedColorEnableLabel = "#FFFFFF"
    let buttonContainedColorDisableBackground = "#BBBBBB"
    let buttonContainedColorDisableBorder = "#FFFFFF00"
    let buttonContainedColorDisableLabel = "#333333"
    let buttonContainedColorHoverBackground = "#4B0092"
    let buttonContainedColorHoverBorder = "#FFFFFF00"
    let buttonContainedColorHoverLabel = "#FFFFFF"
    let buttonContainedColorFocusBackground = "#442184"
    let buttonContainedColorFocusBorder = "#FFFFFF00"
    let buttonContainedColorFocusLabel = "#FFFFFF"
    let buttonOutlinedColorEnableBackground = "#FFFFFF00"
    let buttonOutlinedColorEnableBorder = "#7F28C4"
    let buttonOutlinedColorEnableLabel = "#333333"
    let buttonOutlinedColorDisableBackground = "#FFFFFF00"
    let buttonOutlinedColorDisableBorder = "#BBBBBB"
    let buttonOutlinedColorDisableLabel = "#777777"
    let buttonOutlinedColorHoverBackground = "#f1f3f5"
    let buttonOutlinedColorHoverBorder = "#7F28C4"
    let buttonOutlinedColorHoverLabel = "#333333"
    let buttonOutlinedColorFocusBackground = "#e9ecef"
    let buttonOutlinedColorFocusBorder = "#7F28C4"
    let buttonOutlinedColorFocusLabel = "#333333"
    let buttonTextColorEnableBackground = "#FFFFFF00"
    let buttonTextColorEnableBorder = "#FFFFFF00"
    let buttonTextColorEnableLabel = "#333333"
    let buttonTextColorDisableBackground = "#FFFFFF00"
    let buttonTextColorDisableBorder = "#FFFFFF00"
    let buttonTextColorDisableLabel = "#777777"
    let buttonTextColorHoverBackground = "#f1f3f5"
    let buttonTextColorHoverBorder = "#FFFFFF00"
    let buttonTextColorHoverLabel = "#333333"
    let buttonTextColorFocusBackground = "#e9ecef"
    let buttonTextColorFocusBorder = "#FFFFFF00"
    let buttonTextColorFocusLabel = "#333333"
    let checkboxLabelFontSize: CGFloat = 14
    let checkboxLabelLetterSpacing: CGFloat = 0.16
    let checkboxLabelLineHeight: CGFloat = 1.5
    let checkboxLabelPrimaryFontFamily = "San Francisco"
    let checkboxLabelPrimaryFontWeight: UIFont.Weight = .regular
    let checkboxLabelFallbackFontFamily = "San Francisco"
    let checkboxLabelFallbackFontWeight: UIFont.Weight = .regular
    let dialogTitleFontSize: CGFloat = 20
    let dialogTitleLetterSpacing: CGFloat = 0.12
    let dialogTitleLineHeight: CGFloat = 1.25
    let dialogTitlePrimaryFontFamily = "San Francisco"
    let dialogTitlePrimaryFontWeight: UIFont.Weight = .medium
    let dialogTitleFallbackFontFamily = "San Francisco"
    let dialogTitleFallbackFontWeight: UIFont.Weight = .regular
    let dialogBodyFontSize: CGFloat = 16
    let dialogBodyLetterSpacing: CGFloat = 0.32
    let dialogBodyLineHeight: CGFloat = 1.5
    let dialogBodyPrimaryFontFamily = "San Francisco"
    let dialogBodyPrimaryFontWeight: UIFont.Weight = .regular
    let dialogBodyFallbackFontFamily = "San Francisco"
    let dialogBodyFallbackFontWeight: UIFont.Weight = .regular
    let radioButtonLabelFontSize: CGFloat = 14
    let radioButtonLabelLetterSpacing: CGFloat = 0.16
    let radioButtonLabelLineHeight: CGFloat = 1.5
    let radioButtonLabelPrimaryFontFamily = "San Francisco"
    let radioButtonLabelPrimaryFontWeight: UIFont.Weight = .regular
    let radioButtonLabelFallbackFontFamily = "San Francisco"
    let radioButtonLabelFallbackFontWeight: UIFont.Weight = .regular
    let tagLabelFontSize: CGFloat = 12
    let tagLabelLetterSpacing: CGFloat = 0.16
    let tagLabelLineHeight: CGFloat = 1.25
    let tagLabelPrimaryFontFamily = "San Francisco"
    let tagLabelPrimaryFontWeight: UIFont.Weight = .regular
    let tagLabelFallbackFontFamily = "San Francisco"
    let tagLabelFallbackFontWeight: UIFont.Weight = .regular
    let textFieldLabelPrimaryFontFamily = "San Francisco"
    let textFieldLabelPrimaryFontWeight: UIFont.Weight = .medium
    let textFieldLabelFallbackFontFamily = "San Francisco"
    let textFieldLabelFallbackFontWeight: UIFont.Weight = .regular
    let textFieldLabelFontSize: CGFloat = 14
    let textFieldLabelLetterSpacing: CGFloat = 0.08
    let textFieldLabelLineHeight: CGFloat = 1.5
    let textFieldContentPrimaryFontFamily = "San Francisco"
    let textFieldContentPrimaryFontWeight: UIFont.Weight = .regular
    let textFieldContentFallbackFontFamily = "San Francisco"
    let textFieldContentFallbackFontWeight: UIFont.Weight = .regular
    let textFieldContentFontSize: CGFloat = 16
    let textFieldContentLetterSpacing: CGFloat = 0.32
    let textFieldContentLineHeight: CGFloat = 1.25
    let textFieldHelperTextPrimaryFontFamily = "San Francisco"
    let textFieldHelperTextPrimaryFontWeight: UIFont.Weight = .regular
    let textFieldHelperTextFallbackFontFamily = "San Francisco"
    let textFieldHelperTextFallbackFontWeight: UIFont.Weight = .regular
    let textFieldHelperTextFontSize: CGFloat = 12
    let textFieldHelperTextLetterSpacing: CGFloat = 0.16
    let textFieldHelperTextLineHeight: CGFloat = 1.25
    let heading1FontSize: CGFloat = 96
    let heading1FontWeight: UIFont.Weight = .regular
    let heading1LetterSpacing: CGFloat = 0
    let heading2FontSize: CGFloat = 60
    let heading2FontWeight: UIFont.Weight = .regular
    let heading2LetterSpacing: CGFloat = 0
    let heading3FontSize: CGFloat = 48
    let heading3FontWeight: UIFont.Weight = .regular
    let heading3LetterSpacing: CGFloat = 0
    let heading4FontSize: CGFloat = 34
    let heading4FontWeight: UIFont.Weight = .regular
    let heading4LetterSpacing: CGFloat = 0.08
    let heading5FontSize: CGFloat = 24
    let heading5FontWeight: UIFont.Weight = .regular
    let heading5LetterSpacing: CGFloat = 0
    let heading6FontSize: CGFloat = 20
    let heading6FontWeight: UIFont.Weight = .medium
    let heading6LetterSpacing: CGFloat = 0.12
    let subtitle1FontSize: CGFloat = 16
    let subtitle1FontWeight: UIFont.Weight = .medium
    let subtitle1LetterSpacing: CGFloat = 0.08
    let subtitle2FontSize: CGFloat = 14
    let subtitle2FontWeight: UIFont.Weight = .medium
    let subtitle2LetterSpacing: CGFloat = 0.08
    let body1FontSize: CGFloat = 16
    let body1FontWeight: UIFont.Weight = .regular
    let body1LetterSpacing: CGFloat = 0.32
    let body2FontSize: CGFloat = 14
    let body2FontWeight: UIFont.Weight = .regular
    let body2LetterSpacing: CGFloat = 0.16
    let captionFontSize: CGFloat = 12
    let captionFontWeight: UIFont.Weight = .regular
    let captionLetterSpacing: CGFloat = 0.16
    let overlineFontSize: CGFloat = 12
    let overlineFontWeight: UIFont.Weight = .medium
    let overlineLetterSpacing: CGFloat = 0.8
}
