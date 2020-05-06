import UIKit
import NatDS

final class BorderRadiusCell: UITableViewCell {

    // MARK: - Private properties

    private let label: UILabel = {
        let label = UILabel()
        label.font = Fonts.body1
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private let symbolicView: UIView = {
        let view = UIView()
        view.backgroundColor = DSColors.primary
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    private var symbolicSizeWidthConstraint: NSLayoutConstraint!

    // MARK: - Inits

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public methods

    func configure(description: String, size: CGFloat) {
        label.text = description

        symbolicView.layer.cornerRadius = size
    }

    // MARK: - Private methods

    private func setup() {
        contentView.addSubview(label)
        contentView.addSubview(symbolicView)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: DSSpacing.micro),
            label.leftAnchor.constraint(equalTo: contentView.leftAnchor),

            symbolicView.topAnchor.constraint(
                equalTo: label.bottomAnchor,
                constant: DSSpacing.micro
            ),
            symbolicView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            symbolicView.widthAnchor.constraint(equalToConstant: DSSizes.huge),
            symbolicView.heightAnchor.constraint(equalToConstant: DSSizes.huge)
        ])
    }
}
