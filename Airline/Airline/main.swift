//
//  main.swift
//  Airline
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var davinder = Passenger()
davinder.addPassenger()
print(davinder.displayData())
var dav = Employee()
dav.infoEmployee()
print(dav.displayData())
//var davinderr = Passenger(passengerID: 101, passengerName: "abc", address: "Brampton", email: "dav@gmail.com", passengerPassportNumber: "dfghjk", mobile: "123456",birthdate: "23/7/2018")
//print("\(davinderr.display())")

//var dataHelper = DataHelper()
//dataHelper.displayFlight()


var choice = 1
let dataHelper = DataHelper()
var flight = Flight()

while choice != 6{
    print("\n----What would you like to do today !----")
    print("\t 1 : Display Airlines ")
    print("\t 2 : Display Flight ")
    print("\t 3 : Search Flight ")
    print("\t 4 : Search Flight ")
    print("\t 5 : Cancel Order ")
    print("\t 6 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
        dataHelper.displayAirlines()
   case 2:
        dataHelper.displayFlight()
    case 3:
dataHelper.searchFlight(flightID: 0)
  //          case 4:
    //            flight.searchFlight()
//    case 5:
//        Passenger.cancelOrder()
   case 6:
        exit(0)
   default:
       print("Please enter valid menu option.")
    }
}



