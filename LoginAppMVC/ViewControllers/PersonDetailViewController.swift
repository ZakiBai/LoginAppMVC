//
//  PersonDetailViewController.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setColor()
        navigationItem.title = "\(person.user.name)'s BIO"
        bioLabel.text = person.user.bio
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
