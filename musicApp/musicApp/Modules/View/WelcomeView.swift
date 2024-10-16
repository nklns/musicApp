//
//  WelcomeView.swift
//  musicApp
//
//  Created by Станислав Никулин on 15.10.2024.
//

import UIKit
import SnapKit

/// Вью экрана 'Велком' для предложения подписки
class WelcomeView: UIView {
    // MARK: - UI Elements
    
    let titleLabel = UILabel()
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    let buttonLabel = UIButton()
    
    // MARK: - Layers
    let gradient = CAGradientLayer()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupAppearance()
        setupLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradient.frame = self.bounds
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Methods

private extension WelcomeView {
    
    func setupViews() {
        addSubviews(titleLabel, tableView, buttonLabel)
    }
    
    func setupAppearance() {
        
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        
        setupTitleLabel()
        
        setGradient()
        self.layer.insertSublayer(gradient, at: 0)
        
        setupButtonLabel()
    }
    
    func setupLayout() {
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            $0.horizontalEdges.equalToSuperview().inset(20)
        }
        
        tableView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(300)
        }
        
        buttonLabel.snp.makeConstraints {
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(-20)
            $0.horizontalEdges.equalTo(titleLabel)
            $0.height.equalTo(54)
        }
    }
}

private extension WelcomeView {
    func setGradient() {
        gradient.colors = [
            UIColor.linearGradientColor1.cgColor,
            UIColor.linearGradientColor2.cgColor,
            UIColor.linearGradientColor3.cgColor
        ]
        gradient.startPoint = .init(x: 0.3, y: 1)
        gradient.endPoint = .init(x: 1, y: 0)
        gradient.locations = [0, 0.7, 1]
    }
    
    func setupTitleLabel() {
        titleLabel.text = "Слушай музыку\nбесплатно!"
        titleLabel.font = .systemFont(ofSize: 45, weight: .bold)
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
    }
    
    func setupButtonLabel() {
        buttonLabel.setTitle("Начать!", for: .normal)
        buttonLabel.titleLabel?.font = .systemFont(ofSize: 20, weight: .regular)
        buttonLabel.backgroundColor = UIColor.button
        buttonLabel.layer.cornerRadius = 20
        buttonLabel.layer.masksToBounds = true
    }
}
