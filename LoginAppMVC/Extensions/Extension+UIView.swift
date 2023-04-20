//
//  Extension+UIView.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

// MARK: -Setting up background color for VIEW's
extension UIView {
    func setColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemCyan.cgColor
        ]
        
        layer.insertSublayer(gradientLayer, at: 0)

    }
}
