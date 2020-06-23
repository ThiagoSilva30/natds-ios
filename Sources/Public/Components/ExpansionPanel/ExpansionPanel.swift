import UIKit

public class ExpansionPanel: UIView {

    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = Fonts.subtitle1
        label.textColor = Colors.Content.highEmphasis
        return label
    }()

    private lazy var upDownButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = Colors.Content.highEmphasis
        button.titleLabel?.font = .iconFont(ofSize: 18.0)
        button.setTitle(Icon.outlinedNavigationArrowbottom.unicode, for: .normal)
        button.layer.cornerRadius = 9.0
        button.addTarget(self, action: #selector(didTapUpDownButton), for: .touchUpInside)
        return button
    }()

    private lazy var contentView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        view.distribution = .fill
        view.isLayoutMarginsRelativeArrangement = true
        return view
    }()

    private var detailView: UIView? {
        didSet {
            if let detailView = detailView {
                if isExpanded {
                    cleanContentView()
                    contentView.addArrangedSubview(detailView)
                }
            } else {
                cleanContentView()
            }
        }
    }

    private let viewAnimating: ViewAnimating

    private var isExpanded: Bool { !isCollapsed }
    private var isCollapsed: Bool { upDownButton.transform == CGAffineTransform.identity }
    private var panelHeightConstraint: NSLayoutConstraint?
    private let activeBorderColor = NatColors.primary
    private let inactiveBorderColor = UIColor.clear
    private let animationDuration = 0.5

    public init() {
        self.viewAnimating = ViewAnimatingWrapper()
        super.init(frame: .zero)
        setup()
    }

    init(viewAnimating: ViewAnimating) {
        self.viewAnimating = viewAnimating
        super.init(frame: .zero)
        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setSubtitle(_ subtitle: String) {
        subtitleLabel.text = subtitle
    }

    public func setDetailView(_ detailView: UIView) {
        self.detailView = detailView
    }

    private func setup() {
        backgroundColor = Colors.Surface.surface
        NatElevation.apply(on: self, elevation: .elevation01)
        layer.cornerRadius = NatBorderRadius.medium
        layer.borderWidth = 1.0
        layer.borderColor = inactiveBorderColor.cgColor
        addTapToToggle()
        addSubviews()
        setLayout()
    }

    private func addSubviews() {
        addSubview(subtitleLabel)
        addSubview(upDownButton)
        addSubview(contentView)
    }

    private func setLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        collapsePanelHeight()
        setSubtitleLabelLayout()
        setUpDownButtonLayout()
        setContentViewLayout()
    }

    private func setSubtitleLabelLayout() {
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            subtitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 22),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 21),
            subtitleLabel.trailingAnchor.constraint(equalTo: upDownButton.leadingAnchor, constant: -16)
        ])
    }

    private func setUpDownButtonLayout() {
        upDownButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            upDownButton.widthAnchor.constraint(equalToConstant: 18),
            upDownButton.heightAnchor.constraint(equalToConstant: 18),
            upDownButton.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            upDownButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }

    private func setContentViewLayout() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 24),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    @objc private func didTapUpDownButton() {
        toggle()
    }

    private func toggle() {
        isCollapsed ? expand() : collapse()
    }

    private func collapse() {
        let previousHeight = frame.size.height
        cleanContentView()
        layoutIfNeeded()
        rotateButtonDown()
        animateDecreasingHeight(from: previousHeight)
        animateChangingColorToInactive()
    }

    private func animateDecreasingHeight(from previousHeight: CGFloat) {
        let newHeight = frame.size.height
        self.height = previousHeight
        viewAnimating.animate(withDuration: animationDuration) {
            self.height = newHeight
        }
    }

    private func animateChangingColorToInactive() {
        animateChangingBorderColor(from: activeBorderColor, to: inactiveBorderColor)
        setBorderColorInactive()
    }

    private func animateChangingColorToActive() {
        animateChangingBorderColor(from: inactiveBorderColor, to: activeBorderColor)
        setBorderColorActive()
    }

    private func animateChangingBorderColor(from sourceColor: UIColor, to targetColor: UIColor) {
        let color = CABasicAnimation(keyPath: "borderColor")
        color.fromValue = sourceColor
        color.toValue = targetColor
        color.duration = animationDuration
        color.repeatCount = 1
        layer.add(color, forKey: "color")
    }

    private func expand() {
        if let detailView = detailView {
            contentView.addArrangedSubview(detailView)
            expandPanelHeight()
            expandContentView()
        }
        let previousHeight = frame.size.height
        layoutIfNeeded()
        rotateButtonUp()
        animateIncreasingHeight(from: previousHeight)
        animateIncreasingDetailHeight()
        animateChangingColorToActive()
    }

    private func animateIncreasingHeight(from previousHeight: CGFloat) {
        let newHeight = frame.size.height
        self.height = previousHeight
        viewAnimating.animate(withDuration: animationDuration, animations: {
            self.height = newHeight
        })
    }

    private func animateIncreasingDetailHeight() {
        guard let detailView = detailView else { return }
        let newContentHeight = detailView.frame.height
        detailView.height = newContentHeight / 2.0
        detailView.alpha = 0.0
        let duration = animationDuration / 2.0
        let delay = duration
        viewAnimating.animate(withDuration: duration, delay: delay, options: .allowAnimatedContent) {
            detailView.alpha = 1.0
            self.detailView?.height = newContentHeight
        }
    }

    private func rotateButtonUp() {
        viewAnimating.animate(withDuration: animationDuration) {
            self.upDownButton.transform = CGAffineTransform(rotationAngle: .pi)
        }
    }

    private func setBorderColorActive() {
        layer.borderColor = activeBorderColor.cgColor
    }

    private func rotateButtonDown() {
        viewAnimating.animate(withDuration: animationDuration, animations: {
            self.upDownButton.transform = CGAffineTransform(rotationAngle: .pi * -2.0)
        }, completion: { (_) in
            self.upDownButton.transform = CGAffineTransform.identity
        })
    }

    private func setBorderColorInactive() {
        layer.borderColor = inactiveBorderColor.cgColor
    }

    private func cleanContentView() {
        resetHeight()
        contentView.arrangedSubviews.forEach { $0.removeFromSuperview() }
    }

    private func resetHeight() {
        removePanelHeightConstraint()
        collapsePanelHeight()
        collapseContentView()
    }

    private func expandPanelHeight() {
        removePanelHeightConstraint()
        panelHeightConstraint = heightAnchor.constraint(greaterThanOrEqualToConstant: 64)
        setupPanelHeightConstraint()
    }

    private func removePanelHeightConstraint() {
        if let constraint = panelHeightConstraint {
            removeConstraint(constraint)
        }
    }

    private func collapsePanelHeight() {
        panelHeightConstraint = heightAnchor.constraint(equalToConstant: 64)
        setupPanelHeightConstraint()
    }

    private func setupPanelHeightConstraint() {
        panelHeightConstraint?.priority = .defaultHigh
        panelHeightConstraint?.isActive = true
    }

    private func expandContentView() {
        contentView.layoutMargins = UIEdgeInsets(top: 0, left: 24, bottom: 24, right: 24)
    }

    private func collapseContentView() {
        contentView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    private func addTapToToggle() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapPanel))
        addGestureRecognizer(tap)
    }

    @objc private func didTapPanel() {
        toggle()
    }

}
