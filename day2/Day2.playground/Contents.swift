import Foundation

var arr = [ 3,23,43,2,564,23,6,34,6]
arr.sort {
    $0 < $1
}
arr.sort()

arr

func points(num: Int, bonus: (Int)->Bool) -> Int {
    var pt = num * 10
    if bonus(num) {
        pt += 1
    }
    return pt
}

points(num: 9, bonus: { $0 % 3 == 0 })

points(num: 9) {
    $0 % 3 == 0
}


//some {
//
//}
//
//
//// declarative syntax
//VStack {
//    Text("Hello")
//}



points(num: 5, bonus: { (num: Int) -> Bool in
    return num % 2 != 0
})

let neg = { (n:Int)->Bool in
    return n < 0
}

points(num: -2, bonus: neg)

let pos = { $0 > 0 }
pos(10)
pos(-20)

points(num: 10, bonus: pos)

func odd(num: Int) -> Bool {
    return (num % 2) != 0
}

func negative(num: Int) -> Bool {
    return num < 0
}

points(num: 5, bonus: odd)
points(num: 6, bonus: odd)

func incrementor(num: Int) -> (()->Int) {
    var value = 0
    func increase() -> Int {
        value += num
        return value
    }
    return increase
}

let inc3 = incrementor(num: 3)
let inc7 = incrementor(num: 7)

inc3()
inc3()

inc7()
inc7()

inc3()


