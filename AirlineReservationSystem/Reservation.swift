//
//  Reservation.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-24.
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
    var resmealtype: Date?
    
  override  init(){
        self.resID = 0
        self.respassid = ""
        self.resflightid = ""
        self.resdate = ""
        self.resseatno = ""
        self.resstatus = ""
        self.resmealtype = ""
    }
}

