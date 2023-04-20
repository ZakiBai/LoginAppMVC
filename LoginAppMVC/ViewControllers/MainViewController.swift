//
//  ViewController.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.text = person.username
        passwordTextField.text = person.password
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? TabBarViewController else { return }
        tabBarVC.person = person
    }
    
    @IBAction func loginButtonPressed() {
        if usernameTextField.text  == person.username, passwordTextField.text == person.password {
            performSegue(withIdentifier: "welcome", sender: nil)
        } else {
            showAlert(
                withTitle: "Wrong password!",
                AndMessage: "Please check your passwords again",
                textField: passwordTextField
            )
        }
    }

    @IBAction func hintButtonsPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(withTitle: "Forgot your Username?", AndMessage: "Your username is \(person.username)")
        default:
            showAlert(withTitle: "Forgot your Password?", AndMessage: "Your password is \(person.password)")
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
}
// Private Methods
private extension MainViewController {
    func showAlert(withTitle title: String, AndMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text? = ""
            textField?.becomeFirstResponder()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


