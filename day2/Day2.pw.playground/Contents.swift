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


