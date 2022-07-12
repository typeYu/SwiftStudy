import Foundation

enum Rank: Int { // RawType
    case ace = 1, two, three, four, five
    case six, seven, eight, nine, ten
    case jack, queen, king
    
    func desc() -> String {
        switch self {
        case .ace:
            return "Ace"
        case .jack: return "Jack"
        case .queen: return "Queen"
        case .king: return "King"
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

// Property Wrapper

//struct Address {
//    private var _city: String = ""
//    var city: String {
//        get { _city }
//        set(v) { _city = v.uppercased() }
//    }
//    var name: String
//    var country: String
//}

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Address {
    @FixCase var city: String
    @FixCase var name: String
    @FixCase var country: String
}

var seoul = Address(city: "Seoul", name: "Kim", country: "Korea")
//seoul.city = "Seoul"
seoul.city
seoul.name
seoul.country

