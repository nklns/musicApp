//
//  WelcomeViewController.swift
//  musicApp
//
//  Created by Станислав Никулин on 15.10.2024.
//

import UIKit

class WelcomeViewController: GenericViewController<WelcomeView> {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: - Private Methods

private extension WelcomeViewController {
    
}

extension WelcomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}

extension WelcomeViewController: UITableViewDelegate {
    
}
