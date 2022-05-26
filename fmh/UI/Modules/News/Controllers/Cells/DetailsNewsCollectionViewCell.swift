//
//  DetailsNewsCollectionViewCell.swift
//  fmh
//
//  Created: 24.05.2022
//

import UIKit

class DetailsNewsCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureCell()
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var mainContainer = UIView()
    private lazy var topContainer = UIView()
    private lazy var middleContainerPublic = UIView()
    private lazy var middleContainerCreate = UIView()
    private lazy var middleContainerAuthor = UIView()
    private lazy var bottomContainer = UIView()
    private lazy var footerContainer = UIView()
    
    //private lazy var mainContainer = UIView()
    
    var imageCategory: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .magenta
        return imageView
    }()
    
    var labelTitle: UILabel = {
        let label = UILabel()
        label.text = "Новостной заголовок"
        label.numberOfLines = 2
        label.font = ConstantNews.Font.titleNews
        return label
    }()
    
    var labelPleaceHolderPublic: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.text = "Дата публикации"
        return label
    }()
    
    var labelPublic: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.backgroundColor = ConstantNews.Collor.fillRectangel
        label.text = "22.12.2022"
        return label
    }()
    
    var labelPleaceHolderCreate: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.text = "Дата создания"
        return label
    }()
    
    var labelCreate: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.backgroundColor = ConstantNews.Collor.fillRectangel
        label.text = "22.12.2022"
        return label
    }()
    
    var labelPleaceHolderAuthor: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.text = "Автор"
        return label
    }()
    
    var labelAuthor: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.backgroundColor = ConstantNews.Collor.fillRectangel
        label.text = "Паратова К.И."
        return label
    }()
    
    var labelisActive: UILabel = {
        let label = UILabel()
        label.font = ConstantNews.Font.holder
        label.textColor = ConstantNews.Collor.holderText
        label.text = "✓ АКТИВНА"
        return label
    }()
    
    var buttonTrash: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "иконка корзина"), for: .normal)
        return button
    }()
    
    var buttonEdit: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "иконка редактировать"), for: .normal)
        return button
    }()
    
    var arrowUpDownButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: ConstantNews.Images.chevronDown)?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = ConstantNews.Collor.chevron
        button.contentMode = .scaleAspectFit
        return button
    }()
    
    var labelDescription: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.font = ConstantNews.Font.descriptionNews
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        return label
    }()
    
    func configureCell() {
        mainContainer.clipsToBounds = true
        borderForView(viewForBorder: self)
        topContainer.backgroundColor = .white
        middleContainerPublic.backgroundColor = .white
        borderForView(viewForBorder: middleContainerPublic)
        middleContainerCreate.backgroundColor = .white
        middleContainerAuthor.backgroundColor = .white
        borderForView(viewForBorder: middleContainerAuthor)
        bottomContainer.backgroundColor = .white
        footerContainer.backgroundColor = .white
        
        makeConstraint()
    }
    
    func makeConstraint() {
        contentView.addSubview(mainContainer)
        mainContainer.translatesAutoresizingMaskIntoConstraints = false
        mainContainer.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        mainContainer.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        mainContainer.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        mainContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        mainContainer.addSubview(topContainer)
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        topContainer.leftAnchor.constraint(equalTo: mainContainer.leftAnchor).isActive = true
        topContainer.topAnchor.constraint(equalTo: mainContainer.topAnchor).isActive = true
        topContainer.rightAnchor.constraint(equalTo: mainContainer.rightAnchor).isActive = true
        topContainer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        mainContainer.addSubview(middleContainerPublic)
        middleContainerPublic.translatesAutoresizingMaskIntoConstraints = false
        middleContainerPublic.leftAnchor.constraint(equalTo: mainContainer.leftAnchor).isActive = true
        middleContainerPublic.rightAnchor.constraint(equalTo: mainContainer.rightAnchor).isActive = true
        middleContainerPublic.topAnchor.constraint(equalTo: topContainer.bottomAnchor).isActive = true
        middleContainerPublic.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
        mainContainer.addSubview(middleContainerCreate)
        middleContainerCreate.translatesAutoresizingMaskIntoConstraints = false
        middleContainerCreate.leftAnchor.constraint(equalTo: mainContainer.leftAnchor).isActive = true
        middleContainerCreate.rightAnchor.constraint(equalTo: mainContainer.rightAnchor).isActive = true
        middleContainerCreate.topAnchor.constraint(equalTo: middleContainerPublic.bottomAnchor).isActive = true
        middleContainerCreate.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
        mainContainer.addSubview(middleContainerAuthor)
        middleContainerAuthor.translatesAutoresizingMaskIntoConstraints = false
        middleContainerAuthor.leftAnchor.constraint(equalTo: mainContainer.leftAnchor).isActive = true
        middleContainerAuthor.rightAnchor.constraint(equalTo: mainContainer.rightAnchor).isActive = true
        middleContainerAuthor.topAnchor.constraint(equalTo: middleContainerCreate.bottomAnchor).isActive = true
        middleContainerAuthor.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
        mainContainer.addSubview(bottomContainer)
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.leftAnchor.constraint(equalTo: mainContainer.leftAnchor).isActive = true
        bottomContainer.rightAnchor.constraint(equalTo: mainContainer.rightAnchor).isActive = true
        bottomContainer.topAnchor.constraint(equalTo: middleContainerAuthor.bottomAnchor).isActive = true
        bottomContainer.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        // добавить контейнер footer с описанием новости!!!
        
        //MARK: - Констрейнты для визуальных элементов ячейки
        
        topContainer.addSubview(imageCategory)
        imageCategory.translatesAutoresizingMaskIntoConstraints = false
        imageCategory.leftAnchor.constraint(equalTo: topContainer.leftAnchor, constant: 16).isActive = true
        imageCategory.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        imageCategory.widthAnchor.constraint(equalToConstant: 24).isActive = true
        imageCategory.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        topContainer.addSubview(labelTitle)
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.leftAnchor.constraint(equalTo: imageCategory.rightAnchor, constant: 16).isActive = true
        labelTitle.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        labelTitle.rightAnchor.constraint(equalTo: topContainer.rightAnchor, constant: 50).isActive = true
        labelTitle.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        middleContainerPublic.addSubview(labelPleaceHolderPublic)
        labelPleaceHolderPublic.translatesAutoresizingMaskIntoConstraints = false
        labelPleaceHolderPublic.leftAnchor.constraint(equalTo: middleContainerPublic.leftAnchor, constant: 16).isActive = true
        labelPleaceHolderPublic.centerYAnchor.constraint(equalTo: middleContainerPublic.centerYAnchor).isActive = true
        labelPleaceHolderPublic.widthAnchor.constraint(equalTo: middleContainerPublic.widthAnchor, multiplier: 0.7).isActive = true
        
        middleContainerPublic.addSubview(labelPublic)
        labelPublic.translatesAutoresizingMaskIntoConstraints = false
        labelPublic.rightAnchor.constraint(equalTo: middleContainerPublic.rightAnchor).isActive = true
        labelPublic.centerYAnchor.constraint(equalTo: middleContainerPublic.centerYAnchor).isActive = true
        labelPublic.heightAnchor.constraint(equalToConstant: 18).isActive = true
        labelPublic.widthAnchor.constraint(equalTo: middleContainerPublic.widthAnchor, multiplier: 0.3).isActive = true
        
        middleContainerCreate.addSubview(labelPleaceHolderCreate)
        labelPleaceHolderCreate.translatesAutoresizingMaskIntoConstraints = false
        labelPleaceHolderCreate.leftAnchor.constraint(equalTo: middleContainerCreate.leftAnchor, constant: 16).isActive = true
        labelPleaceHolderCreate.centerYAnchor.constraint(equalTo: middleContainerCreate.centerYAnchor).isActive = true
        labelPleaceHolderCreate.widthAnchor.constraint(equalTo: middleContainerCreate.widthAnchor, multiplier: 0.7).isActive = true
        
        middleContainerCreate.addSubview(labelCreate)
        labelCreate.translatesAutoresizingMaskIntoConstraints = false
        labelCreate.rightAnchor.constraint(equalTo: middleContainerCreate.rightAnchor).isActive = true
        labelCreate.centerYAnchor.constraint(equalTo: middleContainerCreate.centerYAnchor).isActive = true
        labelCreate.heightAnchor.constraint(equalToConstant: 18).isActive = true
        labelCreate.widthAnchor.constraint(equalTo: middleContainerCreate.widthAnchor, multiplier: 0.3).isActive = true
        
        middleContainerAuthor.addSubview(labelPleaceHolderAuthor)
        labelPleaceHolderAuthor.translatesAutoresizingMaskIntoConstraints = false
        labelPleaceHolderAuthor.leftAnchor.constraint(equalTo: middleContainerAuthor.leftAnchor, constant: 16).isActive = true
        labelPleaceHolderAuthor.centerYAnchor.constraint(equalTo: middleContainerAuthor.centerYAnchor).isActive = true
        labelPleaceHolderAuthor.widthAnchor.constraint(equalTo: middleContainerAuthor.widthAnchor, multiplier: 0.7).isActive = true
        
        middleContainerAuthor.addSubview(labelAuthor)
        labelAuthor.translatesAutoresizingMaskIntoConstraints = false
        labelAuthor.rightAnchor.constraint(equalTo: middleContainerAuthor.rightAnchor).isActive = true
        labelAuthor.centerYAnchor.constraint(equalTo: middleContainerAuthor.centerYAnchor).isActive = true
        labelAuthor.heightAnchor.constraint(equalToConstant: 18).isActive = true
        labelAuthor.widthAnchor.constraint(equalTo: middleContainerAuthor.widthAnchor, multiplier: 0.3).isActive = true
        
        
        bottomContainer.addSubview(labelisActive)
        labelisActive.translatesAutoresizingMaskIntoConstraints = false
        labelisActive.leftAnchor.constraint(equalTo: bottomContainer.leftAnchor, constant: 16).isActive = true
        labelisActive.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor).isActive = true
        labelisActive.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        bottomContainer.addSubview(arrowUpDownButton)
        arrowUpDownButton.translatesAutoresizingMaskIntoConstraints = false
        arrowUpDownButton.rightAnchor.constraint(equalTo: bottomContainer.rightAnchor, constant: -20).isActive = true
        arrowUpDownButton.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor).isActive = true
        arrowUpDownButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        arrowUpDownButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        bottomContainer.addSubview(buttonEdit)
        buttonEdit.translatesAutoresizingMaskIntoConstraints = false
        buttonEdit.rightAnchor.constraint(equalTo: arrowUpDownButton.leftAnchor, constant: -25).isActive = true
        buttonEdit.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor).isActive = true
        buttonEdit.widthAnchor.constraint(equalToConstant: 20).isActive = true
        buttonEdit.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        bottomContainer.addSubview(buttonTrash)
        buttonTrash.translatesAutoresizingMaskIntoConstraints = false
        buttonTrash.rightAnchor.constraint(equalTo: buttonEdit.leftAnchor, constant: -25).isActive = true
        buttonTrash.centerYAnchor.constraint(equalTo: bottomContainer.centerYAnchor).isActive = true
        buttonTrash.widthAnchor.constraint(equalToConstant: 20).isActive = true
        buttonTrash.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    func borderForView (viewForBorder: UIView) {
        viewForBorder.layer.borderColor = ConstantNews.Collor.borderCell.cgColor
        viewForBorder.layer.borderWidth = 1
    }
    
    
}
