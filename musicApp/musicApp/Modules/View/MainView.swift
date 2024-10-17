//
//  MainView.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import UIKit

class MainView: UIView {
    // MARK: - UI Elements
    
    // MARK: - Init
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

private extension MainView {
    func setupViews() {
        addSubviews()
    }
    
    func setupAppearance() {
        backgroundColor = .gray
    }
    
    func setupLayout() {
        
    }
}
