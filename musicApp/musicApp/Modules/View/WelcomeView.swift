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
    
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupAppearance()
        setupLayout()
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
        self.backgroundColor = .gray
        
        tableView.backgroundColor = .white
    }
    
    func setupLayout() {
        tableView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(15)
            $0.height.equalTo(300)
        }
    }
}
