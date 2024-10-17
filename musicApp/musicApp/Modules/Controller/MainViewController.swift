//
//  MainViewController.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import UIKit

final class MainViewController: GenericViewController<MainView> {
    
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Private Methods
private extension MainViewController {
    func setupBehaviour() {
        rootView.tableView.delegate = self
        rootView.tableView.dataSource = self
        rootView.tableView.register(MainViewTableCell.self, forCellReuseIdentifier: "MainViewTableCell")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
