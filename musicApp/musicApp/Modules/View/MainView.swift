//
//  MainView.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import UIKit
import SnapKit

class MainView: UIView {
    // MARK: - UI Elements
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    
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
        addSubviews(tableView)
    }
    
    func setupAppearance() {
        backgroundColor = .gray
        tableView.backgroundColor = .white
    }
    
    func setupLayout() {
        tableView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(500)
            $0.centerY.equalToSuperview()
        }
    }
}
