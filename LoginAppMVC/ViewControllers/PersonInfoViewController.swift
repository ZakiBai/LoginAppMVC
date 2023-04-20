//
//  PersonInfoViewController.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet var profileImage: UIImageView! {
        didSet {
            profileImage.layer.cornerRadius = profileImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hometownLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setColor()
        setData()
        navigationItem.title = "\(person.user.fullName)"
        
        profileImage.image = UIImage(named: person.photo)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? PersonDetailViewController else { return }
        detailVC.person = person
    }

}
// Transfer data method
extension PersonInfoViewController {
    private func setData() {
        nameLabel.text = "Name: \(person.user.name)"
        surnameLabel.text = "Surname: \(person.user.surname)"
        genderLabel.text = "Gender: \(person.user.gender)"
        ageLabel.text = "Age: \(person.user.age)"
        educationLabel.text = "Education: \(person.user.educaion)"
        hometownLabel.text = "Hometown: \(person.user.hometown)"
        hobbyLabel.text = "Hobby: \(person.user.hobby.sport.rawValue)"
    }
}
