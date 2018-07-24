//
//  main.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-24.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//var davinder = Passenger()

//print(davinder.displayData())
var davinderr = Passenger(passengerID: 101, passengerName: "abc", address: "Brampton", email: "dav@gmail.com", passengerPassportNumber: "dfghjk", mobile: "123456")
print("\(davinderr.displayData())")
var shehz = Employee(empID: 12, empName: "shehz", empEmail: "sheikh@gmail.com", empMob: "123456", empAdd: "abcde", empDes: "aaaaaa", empSin: "3456789")
print("\(shehz.displayData())")
