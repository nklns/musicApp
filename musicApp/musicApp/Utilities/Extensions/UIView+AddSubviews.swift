//
//  UIView+AddSubviews.swift
//  musicApp
//
//  Created by Станислав Никулин on 15.10.2024.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
