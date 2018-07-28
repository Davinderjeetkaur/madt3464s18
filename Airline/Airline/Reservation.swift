//
//  Reservation.swift
//  Airline
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation : Passenger {
    var resID : Int?
    var respassid : String?
    var resflightid : String?
    var resdate : Date?
    var resseatno : String?
    var resstatus : ResStatuslist?
    var resmealtype : String?
    var dataHelper = DataHelper()
    
    var ReservationID : Int? {
        get{ return self.resID}
        set{ self.resID = newValue}
    }
    var ReservationPasswordID : String?{
        get{return self.respassid}
        set{self.respassid = newValue}
    }
    var ReservationFlightID : String?{
        get{return self.resflightid}
        set{self.resflightid = newValue}
    }
    
    
    var ReservationDate : Date?{
        get{return self.resdate}
        set{self.resdate = newValue}
    }
    var ReservationSeatNo : String?{
        get{return self.resseatno}
        set{self.resseatno = newValue}
    }
    var ReservationStatus : ResStatuslist?{
        get{return self.resstatus}
        set{self.resstatus = newValue}
    }
    var ReservationMealtype : String?{
        get{return self.resmealtype}
        set{self.resmealtype = newValue}
        }
    override  init(){
        self.resID = 0
        self.respassid = ""
        self.resflightid = ""
        self.resdate = DateFormatter().date(from: "")!
        self.resseatno = ""
        self.resstatus = ResStatuslist.NotReseved
        self.resmealtype = ""
        super.init()
    }
//    required init(resID : Int, respassid : String, resflightid : String, resdate : String, resseatno : String, resstatus : String, resmealtype : String,passengerID : Int, passengerName: String,passengerPassportNumber: String,address: String,email: String,mobile: String,birthdate: String)
//    {
//        super.init(passengerID: passengerID, passengerName: passengerName, address: address, email: email, passengerPassportNumber: passengerPassportNumber, mobile: mobile, birthdate: birthdate)
//        self.resID = resID
//        self.respassid = respassid
//        self.resflightid = resflightid
//        self.resdate = resdate
//        self.resseatno = resseatno
//        self.resstatus = resstatus
//        self.resmealtype = resmealtype
//    }
    
    
    override func displayData() -> String {
        var returnData = ""
        
        returnData += " Reservation ID : \(self.resID ?? 0)"
        returnData += "\n Reservation Password ID : \(self.respassid ?? "")"
        returnData += "\n Reservation Flight ID : \(self.resflightid ?? "")"
        returnData += "\n Reservation Date : \(self.resdate ??  DateFormatter().date(from: "")!)"
        returnData += "\n Reservation Seat Number : \(self.resseatno ?? "")"
        returnData += "\n Reservation Status : \(self.resstatus ?? ResStatuslist.NotReseved)"
        returnData += "\n Reservation Meal Type : \(self.resmealtype ?? "")"
      
        return returnData
       
//        print("Reservation ID : \(self.resID ?? 0)")
//        print("Reservation Password ID : \(self.respassid ?? "Unknown")")
//        print("Reservation Flight ID : \(self.resflightid ?? "Unknown")")
//        print("Reservation Date : \(self.resdate ?? "Unknown")")
//        print("Reservation Seat Number : \(self.resseatno ?? "Unknown")")
//        print("Reservation Status : \(self.resstatus ?? "Unknown")")
//        print("Reservation Meal Type : \(self.resmealtype ?? "Unknown")")
    }
    func addReservation(){
        dataHelper.displayFlight()
        print("Please enter product ID to choose any product from the list : ")
        let selectedFlightID : Int = (Int)(readLine()!)!
        
        if let selectedFlight = dataHelper.searchFlight(flightID: selectedFlightID){
            self.ReservationID = selectedFlightID
            self.ReservationDate = Date()
            
           print("How many flights do you want ? : ")
            let flights : Int = (Int)(readLine()!) ?? 1
            
       
            self.resstatus = ResStatuslist.Reserved
            
        }else{
            print("Sorry...The product you entered is unavailable")
        }
}
    func cancelReservation(){
        if !(resmealtype?.isEmpty)! {
            print("Review your order \n \(self.displayData())")
            
            print("Please enter product ID to remove from the order : ")
            let selectedFlightID : Int = (Int)(readLine()!)!
            var productIndex = -1
            
//            for (index, item) in (self.ReservationMealtype?.enumerated())!{
//                if (item.flightID == selectedFlightID){
//                    productIndex = index
//                }
            }
            
//            if productIndex != -1{
////                self.resmealtype.remove(at: productIndex)
//                print("The product is removed from your order")
//            }
//    };else{
//            print("You have no item in your order")
        }
    }
