//
//  main.swift
//  FinalTest
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var dd = Customer()

print(dd.displayData())
print("Enter the customer ID : ")
print("Ener your password : ")
var choice = 1
let dataHelper = DataHelper()
var art = Art()

while choice != 4{
    print("\n----What would you like to do today !----")
    print("\t 1 : Show Arts List ")
    print("\t 2 : Purchase Art ")
    print("\t 3 : Show Purchased Arts ")
    print("\t 4 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
        dataHelper.displayArts()
     //   print("Code to show arts list")
   case 2:
        art.purchaseart()
       // print("Code to show purchase list")
//    case 3:
//        print("Code to show arts purchased")
    case 4:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}


