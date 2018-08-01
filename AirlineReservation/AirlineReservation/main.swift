//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


var choice = 1
let dataHelper = DataHelper()
var flight = Flight()
var passen = Passenger()
var reser = Reservation()


while choice != 6{
    print("\n----What would you like to do today !----")
    print("\t 1 : Display Flights ")
    print("\t 2 : Add Flight ")
    print("\t 3 : Show Flight ")
    print("\t 4 : Add Reservation")
    print("\t 5 : Cancel Reservation ")
    print("\t 6 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
        dataHelper.displayFlight()
    case 2:
         dataHelper.displayPassenger()
    case 3:
         reser.addReservation()
        print(reser.displayData())
    case 4:
          reser.cancelReservation()
    case 6 :
        let show = Flight()
        print(show.displayData())
    case 5:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}

