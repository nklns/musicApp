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
    private let songNameLabel = UILabel()
    private let artistNameLabel = UILabel()
    private let albumImageView = UIImageView()
    
    private let containerView = UIView()
    
    // MARK: - Constants
    private let cornerRadius: CGFloat = 10
    
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
        containerView.addSubviews(albumImageView)
        addSubviews(containerView)
    }
    
    func setupAppearance() {
        backgroundColor = .clear
        
        setupContainerView()
        setupAlbumImageView()
    }
    
    func setupLayout() {
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        albumImageView.snp.makeConstraints {
            $0.top.equalTo(self.snp.top).offset(12)
            $0.bottom.equalTo(self.snp.bottom).offset(-12)
            $0.leading.equalToSuperview().offset(12)
            $0.height.equalTo(50)
            $0.width.equalTo(50)
        }
    }
}

private extension MainViewTableCell {
    func setupAlbumImageView() {
        albumImageView.contentMode = .scaleAspectFit
        albumImageView.layer.cornerRadius = cornerRadius
        albumImageView.clipsToBounds = true
    }
    
    func setupContainerView() {
        containerView.backgroundColor = .cyan
        containerView.layer.cornerRadius = cornerRadius
        containerView.layer.masksToBounds = true
    }
}
