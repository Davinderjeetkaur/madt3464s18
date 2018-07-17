//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func greet(){
    print("greeting...")
}
greet()
//
//func greet(message: String){
//print("\(message)")
//}
//greet(message: "good afternoon")

func add(n1: Int, n2: Int){
    print("\(n1)+ \(n2) = \(n1+n2)")
}
//add(10,20)//error
//add(n2: 20,n1:2)error
add(n1: 20,n2: 3)
func add(_ n1: Int, _ n2: Int) -> Int{
    return(n1+n2)
    
}
var sum = add(2,3)
print("sum = \(sum)")

func sub(n1: Float, n2: Float)-> Float{
return(n1 - n2)
}
print("sub = \(sub(n1: 4.56,n2: 2.21))")

func mul(n1: Int, n2: Int) -> Int{
    return (n1*n2)
}
print("mul = \(mul(n1: 2,n2: 8))")

func swap(j: Int,k: Int) -> (Int,Int) {
    //function arguments are let constant by default
//    var temp = j
// j = k
//    k = temp
//
return (k,j)
}

// (a,b) = swap(j: 2, k: 4)
//print("a = \(a) b = \(b)")

func swap(j:  inout Int, k: inout Int){
    let temp = j
j = k
k = temp
}


var n1 = 10, n2 = 20
swap(&n1, &n2) //we can also write swap(j: n1, k: n2)
print("n1 = \(n1) n2 = \(n2)")

func SI(amount: Double, years: Double = 2,rate: Double = 3.4) -> Double{
    return((amount * years * rate)/100)
    
}

print("deposit 1 : \(SI(amount: 10000.23,years: 1,rate: 5.2))")

print("deposit 2 : \(SI(amount: 103456,years: 2))")
print("deposit 3 : \(SI(amount: 100))")
//Variadic argument...
func wishes(wishList: String...){
    for eachWish in wishList{
        print("\(eachWish)")
    }
}
wishes(wishList: "Happy Birthay", "WYJGHKFH", "Party","PATANDARA")//use to call FUNCTION
wishes(wishList: "Subhakanshalu","shubhkamnaye","badhaiyaan","mubarkaan","janmadivas")

func addArray(arrays: [Int]...) -> [Int]{
    let a = arrays.count
    print("a =\(a)")
    
    var array1 = arrays[0]
    var array2 = arrays[1]
    
    var sumArray = [Int]()//creating array
    
    if array1.count == array2.count{
        for itr in 0..<array1.count{//declaring range
            sumArray.append(array1[itr] + array2[itr])
        }
    }
return sumArray
}
var ar1 = [1,2,3,4,5]
var ar2 = [5,6,7,8,9]
var result = addArray(arrays: ar1, ar2)//call function ,call the function
print("result : \(result)")
//functon as a type
var someOper : (Int , Int) -> Int = mul
print("multiplication : \(someOper(2,5))")

someOper = add //function add
print("addition : \(someOper(2,5))")

//someOper = sub
//functon as a parameter
func mathOper(someFunc: (Int,Int) -> Int,n1: Int,n2: Int){ //declare only prototype as[Int]
    print("math operation : \(someFunc(n1,n2))")
}
mathOper(someFunc: mul, n1: 6, n2: 3)
mathOper(someFunc: add, n1: 6, n2: 3)

//function as a return type
func increase(_ input: Int)-> Int{
    return(input + 1)
}

func decrease(_ input: Int)-> Int{
    return(input - 1)
}


func counting(flag: Bool) -> (Int) -> Int{
    
        return flag ? increase : decrease
    }

var countFunc = counting(flag: true)
print("\(countFunc(3))")

countFunc = counting(flag: false)
print("\(countFunc(3))")










