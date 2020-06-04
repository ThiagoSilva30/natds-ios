enum ButtonStyle {
    static func applyStyle(on button: UIButton) {
        button.titleLabel?.font = NatFonts.font(ofSize: .button, withWeight: .medium)
        button.titleLabel?.lineBreakMode = .byTruncatingTail

        button.layer.cornerRadius = NatBorderRadius.medium

        let spacing = getTheme().spacing.small
        button.contentEdgeInsets = UIEdgeInsets(
            top: spacing,
            left: spacing,
            bottom: spacing,
            right: spacing
        )
    }

    static func applyStyleForTitle(
        _ title: String?,
        colorForNormal: UIColor,
        on button: UIButton) {

        var titleForNormal: NSAttributedString?
        var titleForDisabled: NSAttributedString?

        if let title = title {
            titleForNormal = createTextForTitle(
                text: title,
                withColor: colorForNormal
            )
            titleForDisabled = createTextForTitle(
                text: title,
                withColor: NatColors.onSurface.withAlphaComponent(getTheme().opacities.opacity06)
            )
        }

        button.setAttributedTitle(titleForNormal, for: .normal)
        button.setAttributedTitle(titleForDisabled, for: .disabled)
    }

    static private func createTextForTitle(text: String, withColor color: UIColor) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: text.uppercased())
        attributedString.apply(foregroundColor: color)

        let value = getTheme().font.letterSpacings.button
        attributedString.apply(kernValue: value)

        return attributedString
    }
}
