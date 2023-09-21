import UIKit

protocol Animal {
    mutating func speak()
}

class Bird: Animal {
    func speak() {
        print("Eu faço piu")
    }
}

class Dog: Animal {
    func speak() {
        print("Eu faço au au ")
    }
}

class Cat: Animal {
    func speak() {
        print("Eu faço miau")
    }
}


enum Birds: Animal {
    case ticotico
    case urubu
    case cisne
    case other
    
    func speak() {
        switch self {
        case .cisne:
            print("Eu faco Quack")
        case .urubu:
            print("Eu faco bruu")
        case .ticotico:
            print("Eu faco tictic")
        case .other:
            print("Eu faco piu")
        }
    }
}
