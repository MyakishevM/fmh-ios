//
//  OurMissionCell.swift
//  fmh
//
//  Created: 5/15/22
//

import UIKit

class OurMissionCell: UITableViewCell {

    // MARK: - Parameters
    static let identifier = "OurMissionReusableIdentifier"
    
    private let cellView = UIView()
    
    private let stackView = UIStackView()
    
    private let taglineView = UIView()
    private let taglineLabel = UILabel()
    
    private let descriptionLabel = UILabel()
    private let arrowView = UIImageView()
    
    var isDescriptionHidden = true {
        willSet {
            if newValue == false {
                descriptionLabel.isHidden = false
                arrowView.image = UIImage(systemName: "chevron.up")
            } else {
                descriptionLabel.isHidden = true
                arrowView.image = UIImage(systemName: "chevron.down")
            }
        }
    }
    
    // MARK: - Configure
    override func prepareForReuse() {
        super.prepareForReuse()
        taglineView.backgroundColor = nil
        taglineLabel.text = nil
        taglineLabel.backgroundColor = nil
        descriptionLabel.text = nil
    }
    
    func configure(cellData: ourMissionStruct) {
        taglineView.backgroundColor = cellData.color
        taglineLabel.text = cellData.tagline
        taglineLabel.backgroundColor = cellData.color
        descriptionLabel.text = cellData.more
        isDescriptionHidden = cellData.isHidden
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Setup UI
    private func setupUI() {
        self.backgroundColor = UIColor.clear
        self.selectionStyle = .none
        self.addSubview(cellView)
        cellView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 29),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        cellView.clipsToBounds = true
        cellView.backgroundColor = .white
        cellView.layer.cornerRadius = 8
        cellView.layer.borderWidth = 1
        cellView.layer.borderColor = UIColor(red: 0.846, green: 0.846, blue: 0.846, alpha: 1).cgColor
        
        let leafView = UIImageView()
        cellView.addSubview(leafView)
        leafView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leafView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 3),
            leafView.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 10),
            leafView.widthAnchor.constraint(equalToConstant: 31),
            leafView.heightAnchor.constraint(equalToConstant: 28)
        ])
        leafView.clipsToBounds = true
        leafView.image = UIImage(named: "LeafIcon")
        
        cellView.addSubview(arrowView)
        arrowView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arrowView.centerYAnchor.constraint(equalTo: leafView.centerYAnchor),
            arrowView.rightAnchor.constraint(equalTo: cellView.rightAnchor, constant: -17)
        ])
        arrowView.clipsToBounds = true
        arrowView.image = UIImage(systemName: "chevron.down")
        arrowView.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.54)
        
        cellView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: cellView.centerXAnchor),
            stackView.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 9),
            stackView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 33),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: cellView.bottomAnchor, constant: -9)
        ])
        stackView.clipsToBounds = true
        stackView.layer.cornerRadius = 5
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 9
        
        stackView.addArrangedSubview(taglineView)
        
        taglineView.addSubview(taglineLabel)
        taglineLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            taglineLabel.centerYAnchor.constraint(equalTo: taglineView.centerYAnchor),
            taglineLabel.centerXAnchor.constraint(equalTo: taglineView.centerXAnchor),
            taglineLabel.leftAnchor.constraint(equalTo: taglineView.leftAnchor, constant: 8),
            taglineLabel.topAnchor.constraint(equalTo: taglineView.topAnchor, constant: 6)
        ])
        taglineLabel.clipsToBounds = true
        taglineLabel.numberOfLines = 0
        taglineLabel.lineBreakMode = .byWordWrapping
        
        stackView.addArrangedSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.clipsToBounds = true
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
    }

    // MARK: - Actions
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
