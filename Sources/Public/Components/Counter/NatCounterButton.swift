import UIKit

internal final class NatCounterButton: UIView, Pulsable {

    var action: (() -> Void)?
    var isEnabled: Bool = true {
        didSet {
            self.updateColors()
            self.setNeedsDisplay()
        }
    }

    var iconButton: UIImageView = {
        let image = UIImageView()
        return image
    }()

    init() {
        super.init(frame: .zero)
        setupLayout()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false

        addSubview(iconButton)

        NSLayoutConstraint.activate([
            iconButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            iconButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

    private func setupLayout() {
        clipsToBounds = true
        layer.borderColor = NatColors.highEmphasis.cgColor
        layer.borderWidth = 0.5

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        addGestureRecognizer(tapGesture)
    }
    
    

    private func updateColors() {
        self.iconButton.tintedColor = isEnabled ?
            getUIColorFromTokens(\.colorHighEmphasis) :
            getUIColorFromTokens(\.colorMediumEmphasis)
    }

    func configure(height: CGFloat, width: CGFloat) {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: height),
            widthAnchor.constraint(equalToConstant: width)
        ])
    }

    @objc func tapHandler(_ sender: UIGestureRecognizer) {
        if isEnabled {
            action?()
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if isEnabled {
            let color = getUIColorFromTokens(\.colorHighEmphasis).withAlphaComponent(0.2)

            addPulseLayerAnimated(
                at: centerBounds,
                in: layer,
                withColor: color,
                removeAfterAnimation: true
            )
        }
    }
}
