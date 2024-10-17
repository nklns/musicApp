//
//  MainViewTableCell.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import UIKit
import SnapKit

final class MainViewTableCell: UITableViewCell {
    // MARK: - UI Elements
    let songNameLabel = UILabel()
    let artistNameLabel = UILabel()
    let albumImageView = UIImageView()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupAppearance()
        setupLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Public Methods
extension MainViewTableCell {
    func configure(with model: MainViewCellModel) {
        self.songNameLabel.text = model.songName
        self.artistNameLabel.text = model.artistName
        self.albumImageView.image = model.albumImage
    }
}

// MARK: - Private Methods
private extension MainViewTableCell {
    func setupViews() {
        addSubviews()
    }
    
    func setupAppearance() {
        backgroundColor = .cyan
    }
    
    func setupLayout() {
        
    }
}
