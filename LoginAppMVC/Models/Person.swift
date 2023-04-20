//
//  Person.swift
//  LoginAppMVC
//
//  Created by Zaki on 20.04.2023.
//

struct Person {
    let username: String
    let password: String
    let guest: String
    let photo: String
    let user: User
    
    
    static func getPerson() -> Person {
        Person(
            username: "Zaki",
            password: "swift",
            guest: "Alexey",
            photo: "zaki",
            user: User.getUser()
        )
    }
    
}

struct User {
    let name: String
    let surname: String
    let gender: Gender
    let age: String
    let hometown: String
    let educaion: Education
    let hobby: Hobby
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getUser() -> User {
        User(
            name: "Zaki",
            surname: "Menzhanov",
            gender: Gender.male,
            age: "22",
            hometown: "Almaty",
            educaion: Education.bachelor,
            hobby: Hobby.getHobby(),
            bio: "Hey guys))My name is Zaki Menzhanov.I am student of first course in IITU.I am 16 years old. My nation kazakh and I live in Kazakhstan, more precisely in South Capital(Almaty).I have 2 sisters and parents. My elder sister name is Dana(29),she is a surgeon.Now she has little baby and husband.And Her husband also surgeon)))I think in future little baby will be a professional surgeon.my second sister name is Moldir(25),she graduade Marmara university in Turkey.Now her position of head of the call center in POST EXPRESS. My mother name is Zabira(50)and she does not work. And finally about my father. His name is Donat(61)and he is professional interpreter. He worked as the ambassador of Germany as a translator and now he is retair.I went to school earlier than other chidren and it was bad for me.My classmates were bigger than I physically twice.I could not stand up for myself.BUT in my 15–16 years I developed physically very well, because went to sport.AND A lot has changed in my life.Now I think:”when I will be work my peers will be study in second course or when I will make a family my peers will be work first year” It is cool.I like to learn how to create web pages.Because my profession is Computer Science."
        )
    }
}

enum Gender {
    case male
    case female
}

enum Education: String {
    case school = "School"
    case bachelor = "Bachelor of Computer Science"
    case master = "Master of Computer Science"
}

struct Hobby {
    let sport: Sport
    let creative: Creative
    
    static func getHobby() -> Hobby {
        Hobby(sport: Sport.bjj, creative: Creative.ukulele)
    }
}

enum Sport: String {
    case bjj = "Brazilian Jiu Jitsu"
    case box = "Box"
    case grappling = "Grappling"
}

enum Creative: String {
    case ukulele = "Ukulele"
    case singing = "Vokal"
    case painting = "Painting Art"
}
