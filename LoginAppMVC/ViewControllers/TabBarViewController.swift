//
//  TabBarViewController.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var person: Person!

    override func viewDidLoad() {
        transferData()
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?.last?.title = person.user.fullName
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.person = person
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? PersonInfoViewController else{
                return
                }
                userInfoVC.person = person
            }
        }
    }

}
