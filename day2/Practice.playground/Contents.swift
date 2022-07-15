import UIKit

var emptyArray:[String] = []

var ea2 = [String]()

let nums = [1,2]
let arr = [1,1.0]
let a2:CustomStringConvertible = [ 1, "2" ]

// xx=[]
var xx = ["Hello"]

xx.append("hello")
xx

xx=[]

xx

let a = [1,2,3,4]
a[2]

let ages = [13, 18, 34, 29]
var dollar = 0
for age in ages {
    if age > 19 {
        dollar += 20
    } else {
        dollar += 15
    }
}
print("Total cost: \(dollar)")


var sum = 0
for num in 1 ... 100 {
    sum += num
}

import Foundation

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

func hello(a: String, b: String) -> String {
    return a+b
}

var fff = greet

let mm = fff("Kim", "Sunday")

fff = hello



let msg1 = greet(name: "TUKOREA", day: "Monday")
let msg2 = greet(name: "x", day: "good")

let t1 = (10, 20)
let t2 = (x:10, y:20)



func sum_mul(a: Int, b: Int) -> (Int, Int) {
    return(a+b, a*b)
}

let x = sum_mul(a:10, b:20)
let y = sum_mul(a:100, b:102)



func incrementor(num:Int) ->(() -> Int) {
    var value = 0
    func increase() -> Int {
        value += num
        return value
    }
    return increase;
}

let inc3 = incrementor(num: 3)
inc3()
inc3()

let inc7 = incrementor(num: 7)
inc7()
inc7()

inc3()

var numbers = [1,12,32,2,4,43,3]
numbers.sort {
    $0 < $1
}

numbers.sort(by:<)


class Animal {
    var legCount: Int = 0
    var name: String
    init(name: String){
        self.name = name
    }
    func desc() -> String {
        return "An animal \(name) : \(legCount)"
    }
}

class Mammal: Animal {
    override init(name: String) {
        super.init(name:name)
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

    
    var kneeCount: Int {
        legCount
    }
    
    var toeCount: Int {
        get {
            return 4 * legCount
        }
        set(v) {
            legCount = v / 4
        }
    }
}

let mo = Monster(name: "kakaka")
mo.legCount = 40
mo.eyeCount
mo.eyeCount = 100
mo.kneeCount
mo.toeCount = 97
mo.kneeCount

let animals = [
    Mammal(name: "Elephant"),
    Mammal(name: "Jindol"),
    Mammal(name: "Pla")
]

for a in animals {
    print(a.desc())
    print(a.giveBirth().desc())
    if a is Platypus {
        
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

let m = Mammal(name:"Elephant")
m.desc()





enum Rank : Int {
    case ace, two, three, four, five
    case six, seven, eight, nine, ten
    case jack, queen, king
    
    func desc() -> String {
        switch self {
        case .ace:
            return "Ace"
        case .king:
            return "King"
        case .jack:
            return "Jack"
        case .queen:
            return "Queen"
        default:
            return "\(self.rawValue)"
        }
    }
}

var r = Rank.ten
//r = .seven
r.rawValue
r.desc()
Rank.nine.desc()

enum Response {
    case result(String, String)
    case error(String)
}

let res1 = Response.error("Not ready")
let res2 = Response.result("Kim", "Seoul")

struct Address {
    private var _city: String = ""
    var city: String {
        get { _city }
        set(v) { _city = v.uppercased()}
    }
    var name: String
    var country: String
}


/*@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    var wrappedValue: String {
        get {value}
        set {value = newValue.uppercased}
    }
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Address {
    @FixCase var city: String
    @Fixcase var name: String
    @Fixcase var country: String
}

var seoul = Address(city: "Seoul", name: "Kim", country: "Korea")
seoul.city
seoul.name
seoul.country*/

func printRank(rank: Rank) {
    print("I don't know")
}

printRank(rank: r)
printRank(rank: .king)



