//
//  WelcomeViewController.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setColor()
        greetingsLabel.text = "Welcome \(person.guest)!"
        nameLabel.text = "My name is \(person.user.fullName)"
    }

}
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
