//
//  Reservation.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation : Passenger {
    var resID : Int?
    var respassid: String?
    var resflightid : String?
    var resdate: String?
    var resseatno: String?
    var resstatus : String?
    var resmealtype: String?
    
   override  init(){
        self.resID = 0
        self.respassid = ""
        self.resflightid = ""
        self.resdate = ""
        self.resseatno = ""
        self.resstatus = ""
        self.resmealtype = ""
    super.init()
    }
    required init(resID : Int, respassid : String, resflightid : String, resdate : String, resseatno : String, resstatus : String, resmealtype : String,passengerID : Int, passengerName: String,)
    {
        super.init(passengerID: passengerID, passengerName: pas, address: <#T##String#>, email: <#T##String#>, passengerPassportNumber: <#T##String#>, mobile: <#T##String#>, birthdate: <#T##String#>)
        self.resID = resID
        self.respassid = respassid
        self.resflightid = resflightid
        self.resdate = resdate
        self.resseatno = resseatno
        self.resstatus = resstatus
        self.resmealtype = resmealtype
    }
    
     func display()  {
        
        super.display()
        print("Reservation ID : \(self.resID ?? 0)")
        print("Reservation Password ID : \(self.respassid ?? "Unknown")")
        print("Reservation Flight ID : \(self.resflightid ?? "Unknown")")
        print("Reservation Date : \(self.resdate ?? "Unknown")")
        print("Reservation Seat Number : \(self.resseatno ?? "Unknown")")
        print("Reservation Status : \(self.resstatus ?? "Unknown")")
        print("Reservation Meal Type : \(self.resmealtype ?? "Unknown")")
    }
    
}
