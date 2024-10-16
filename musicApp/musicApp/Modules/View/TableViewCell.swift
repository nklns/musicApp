//
//  TableViewCell.swift
//  musicApp
//
//  Created by Станислав Никулин on 16.10.2024.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    // MARK: - UI Elements
    
    private let containerView = UIView()
    private let symbolImageView = UIImageView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupAppearance()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TableViewCell {
    // MARK: - Public Methods
    
    /// Метод конфигурации ячейки `TableViewCell`
    func configure(model: CellModel) {
        self.symbolImageView.image = model.image
        self.titleLabel.text = model.title
        self.descriptionLabel.text = model.description
    }
}

// MARK: - Private Methods

private extension TableViewCell {
    func setupViews() {
        self.addSubviews(containerView)
        containerView.addSubviews(symbolImageView, titleLabel, descriptionLabel)
    }
    
    func setupAppearance() {
        self.backgroundColor = .clear
        containerView.backgroundColor = .cyan
        containerView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
        
        symbolImageView.contentMode = .scaleAspectFit
        
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 13, weight: .bold)
        titleLabel.numberOfLines = 0
        descriptionLabel.textColor = .black
        descriptionLabel.font = .systemFont(ofSize: 11, weight: .regular)
        descriptionLabel.numberOfLines = 0
        
        
    }
    
    func setupLayout() {
        containerView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        symbolImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.centerY.equalToSuperview()
            $0.height.equalTo(38)
            $0.width.equalTo(38)
        }
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.leading.equalTo(symbolImageView.snp.trailing).offset(16)
            $0.trailing.equalToSuperview().offset(-8)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.trailing.equalTo(titleLabel.snp.trailing)
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.bottom.equalToSuperview().offset(-16)
        }
    }
}


private extension TableViewCell {

}
