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
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
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
        addSubviews(tableView)
    }
    
    func setupAppearance() {
        
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        
        setGradient(gradient: gradient)
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func setupLayout() {
        tableView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(300)
        }
    }
}

private extension WelcomeView {
    func setGradient(gradient: CAGradientLayer) {
        gradient.colors = [
            UIColor.linearGradientColor1.cgColor,
            UIColor.linearGradientColor2.cgColor,
            UIColor.linearGradientColor3.cgColor
        ]
        gradient.startPoint = .init(x: 0.3, y: 1)
        gradient.endPoint = .init(x: 1, y: 0)
        gradient.locations = [0, 0.7, 1]
    }
}
