import Foundation

class Animal {
    var legCount: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func desc() -> String {
        return "Animal(\(name) : \(legCount))"
    }
}

class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        legCount = 4
    }
    func giveBirth() -> Mammal {
        Mammal(name: "Baby \(name)")
    }
}

class Dog: Mammal {
    func bark() -> String {
        "bark !!"
    }
    override func giveBirth() -> Mammal {
        return Dog(name: "Puppy \(name)")
    }
}

class Platypus: Mammal {
    override func giveBirth() -> Mammal {
        print("Laying an Egg")
        return Platypus(name: "Baby \(name) from an Egg")
    }
}

class Monster: Mammal {
    var eyeCount = 0 {
        didSet {
            legCount = 2 * eyeCount
        }
    }
    var showsImage = false {
        didSet {
            if showsImage {
                
            } else {
                
            }
        }
    }
    
    var kneeCount: Int {
        legCount
    }
//    var kneeCount: Int {
//        get {
//            return legCount
//        }
//    }
    var toeCount: Int {
        get {
            return 4 * legCount
        }
        set(v) {
            legCount = v / 4
        }
    }
}
let anims: [String:Mammal]  = [:]

let mo = Monster(name: "Kakaka")
mo.legCount = 40
mo.eyeCount
mo.eyeCount = 100
mo.kneeCount
mo.toeCount = 97
mo.kneeCount
mo.toeCount


let animals = [
    Mammal(name: "Elephant"),
    Dog(name: "Jindol"),
    Platypus(name: "Pla")
]


for a in animals {
    print(a.desc())
    print(a.giveBirth().desc())
    if a is Platypus {
        ////
    } else if a is Dog {
        ///
    } else {
        ///
    }
}


let jd = Dog(name: "Jindol")
jd.desc()
jd.bark()
let jj = jd.giveBirth() as? Dog
if jj != nil {
    jj!.desc()
    jj!.bark()
}
jj?.desc()
jj?.bark()


let m = Mammal(name: "Elephant")
m.desc()
let mm = m as? Dog
let nd = mm?.desc()

//m.bark()
let child = m.giveBirth()
child.desc()
child.giveBirth().desc()
// encapsulation

// member variable = field = property = attribute = data
// member function = method = behavior = operation

let a = Animal(name: "Lark")
a.legCount
a.desc()
let b = Animal(name: "Elephant")
b.legCount = 4
b.desc()
