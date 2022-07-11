import Foundation

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

func hello(a: String, b: String) -> String {
    return a + b
}

var fff = greet

let mm = fff("Kim", "Sunday")

fff = hello

let m2 = fff("Kim", "Sunday")

ff

let msg1 = greet(name: "TUKorea", day: "Monday")
//let msg1 = greet("TUKorea", "Monday")
let msg2 = greet(name: "x", day: "good")

let t1 = (10, 20)
t1.0
t1.1

let t2 = (x:10, y:20)
t2.x
t2.y



func sum_mul(a: Int, b: Int) -> (Int, Int) {
    return (a+b, a*b)
}

let x = sum_mul(a: 10, b: 20)
let y = sum_mul(a: 100, b: 102)
