//
//  TableViewCell.swift
//  musicApp
//
//  Created by Станислав Никулин on 16.10.2024.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    let symbolImageView = UIImageView()
    
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupViews()
        setupAppearance()
        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

// MARK: - Private Methods

private extension TableViewCell {
    func setupViews() {
        self.addSubviews(symbolImageView, titleLabel, descriptionLabel)
    }
    
    func setupAppearance() {
        titleLabel.textColor = .black
        descriptionLabel.textColor = .black
    }
    
    func setupLayout() {
        
    }
}

extension TableViewCell {
    func configureCell(model: CellModel) {
        self.symbolImageView.image = model.image
        self.titleLabel.text = model.title
        self.descriptionLabel.text = model.description
    }
}
