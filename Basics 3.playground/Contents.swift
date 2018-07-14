//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello");

print ("Hello friends","Haalo Ishav",str,separator: "Next..")

print(1,2,3,4,5,separator : "...")

var num1 = 10
var num2 = 20
let sum = num1 + num2

print("sum of \(num1) and \(num2) is \(sum)")

print("😡😀😆","emoji","🦋 ",separator: "🇨🇦")

var x: Int
x = 10
print("values of \(x)")

var greet : String?
print("Hello, \(String(describing: greet))")
//optional binding"

greet  = "Good morning"
print("Hello, \(String(describing: greet))")

if greet != nil{
    print(greet!)
}else{
    print("greet is nil")
}

var temperature : Int!

print(temperature)

if temperature != nil{
    print("\(temperature)")
}

if let PI:Float = 3.142 {
    print("Pi = \(PI)")
}

//PI = 3.14

let friends:[String] = ["LA","Abhi","Akash","Aman"]

for frnd in friends{
    print("\(frnd)")
}
//
var j = 1
//while(j<3){
//    print("\(j)")
//    j = j+1
//}
//
//j=10
//repeat{
//    print("\(j)")
//    j = j+10
//}while(j<30)

j=6
switch j{
case 1...9:
    print("1 to 9")
case 10:
    print("ten")
case 20:
    print("twenty")
case 30:
    print("thirty")
case 40,70,80:
    print("forty or seventy")
case 81..<100:
    print ("80 to 100")
default:
    print("Not supported")
}

let coordinate = (10,20)
switch coordinate{
case (0,0):
    print("no canvas")
case (10,20):
    print("on center")
    fallthrough
case (1...10, 1...20):
    print("within canvas")
case(_,20):
    print("y axis")
case(10,_):
    print("x axis")
default:
    print("canvas unavilable")
}

let range = 1...5
print(range)
print("\(range) contains 3 : ", range.contains(3))
print("\(range) contains 7 : ", range.contains(7))
print("\(range) lowerbound : ", range.lowerBound)
print("\(range) upperbound : ", range.upperBound)






