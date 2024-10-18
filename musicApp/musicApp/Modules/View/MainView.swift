//
//  MainView.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import UIKit
import SnapKit

final class MainView: UIView {
    // MARK: - UI Elements
    /// Таблица с отступами между секциями для отображения данных
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    private let titleLabel = UILabel()
    private let gradient = CAGradientLayer()
    private let playButton = UIButton()
    private let shuffleButton = UIButton()
    private let buttonStackView = UIStackView()
    
    // MARK: - Constants
    /// Расстояние между секциями таблицы. Устанавливается для разделения контента
    let spaceBetweenSections: CGFloat = 5
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupAppearance()
        setupLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradient.frame = bounds
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Methods

private extension MainView {
    func setupViews() {
        addSubviews(tableView, titleLabel, playButton)
    }
    
    func setupAppearance() {
        self.layer.insertSublayer(gradient, at: 0)
        
        setupTableView()
        setupGradient()
        setupTitleLabel()
        setupPlayButton()
    }
    
    func setupLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            $0.leading.equalToSuperview().offset(20)
        }
        
        playButton.snp.makeConstraints {
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
//            $0.width.equalTo(180)
        }
        
        tableView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(500)
            $0.centerY.equalToSuperview().offset(100)
        }
    }
    
    func setupTableView() {
        tableView.backgroundColor = .clear
        tableView.sectionHeaderHeight = spaceBetweenSections
        tableView.sectionFooterHeight = spaceBetweenSections
        tableView.isScrollEnabled = false
    }
    
    func setupGradient() {
        gradient.colors = [
            UIColor.linearGradientColor1.cgColor,
            UIColor.linearGradientColor2.cgColor,
            UIColor.linearGradientColor3.cgColor
        ]
        gradient.startPoint = .init(x: 0.5, y: 1)
        gradient.endPoint = .init(x: 0.5, y: 0)
        gradient.locations = [0, 0.4, 1]
    }
    
    func setupTitleLabel() {
        titleLabel.text = "Твоя библиотека"
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel.textColor = .white
    }
    
    func setupPlayButton() {
        let NSAttributetString = NSAttributedString(string: "Слушать", attributes: [
            .foregroundColor: UIColor.purple,
            .font: UIFont.systemFont(ofSize: 13, weight: .bold)
        ])
        let attributetString = AttributedString(NSAttributetString)
        
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = .white.withAlphaComponent(0.9)
        config.image = UIImage(systemName: "play.fill")?
            .applyingSymbolConfiguration(.init(font: .systemFont(ofSize: 8, weight: .bold)))?
            .withTintColor(.purple, renderingMode: .alwaysOriginal)
        config.attributedTitle = attributetString
        config.imagePlacement = .trailing
        config.titleAlignment = .leading
        config.background.cornerRadius = 15
        config.contentInsets = .init(top: 10, leading: 20, bottom: 10, trailing: 20)
        config.imagePadding = 75
        
        playButton.configuration = config
    }
}
