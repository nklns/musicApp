//
//  WelcomeView.swift
//  musicApp
//
//  Created by Станислав Никулин on 15.10.2024.
//

import UIKit

/// Вью экрана 'Велком' для предложения подписки
class WelcomeView: UIView {
    // MARK: - UI Elements
    
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
        addSubviews()
    }
    
    func setupAppearance() {

    }
    
    func setupLayout() {
        
    }
}
