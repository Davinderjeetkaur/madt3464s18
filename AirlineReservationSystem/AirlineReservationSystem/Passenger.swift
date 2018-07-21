//
//  Passenger.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passenger{
private var passengerID : Int?
private var passengerName : String?
private var passengerPassportNumber : String?
private var address : String?
private var email : String?
private var mobile : String?
private var birthdate : Date?
    

    //default initializer
    init(){
        self.passengerID = 0
        self.passengerName = ""
        self.passengerPassportNumber = ""
        self.address = ""
        self.email = ""
        
        self.mobile = ""
      //  self.birthdate = "MM/dd/yyyy"
        
    }
    
    //parameterized initializer
    init(passengerID: Int, passengerName: String, address: String, email: String, passengerPassportNumber: String, mobile: String){
        
        self.passengerID = passengerID
        self.passengerName = passengerName
        self.address = address
        self.email = email
        self.mobile = mobile
        self.passengerPassportNumber = passengerPassportNumber
    }
    
    //stored property
    var PassengerID : Int? {
        get{ return self.passengerID}
        set{ self.passengerID = newValue}
    }
    var PassengerName : String?{
        get{return self.passengerName}
        set{self.passengerName = newValue}
    }
    var Passengerpassportnumber : String?{
        get{return self.passengerPassportNumber}
        set{self.passengerPassportNumber = newValue}
    }
    
    
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Email : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var Mobile : String?{
        get{return self.mobile}
        set{self.mobile = newValue}
    }
   
    
    func displayData() -> String{
        var returnData = ""
        
        if self.passengerID != nil {
            returnData += "\n Passenger ID : \(self.passengerID ?? 0)"
        }
        
        if self.passengerName != nil {
            returnData += "\n Passenger Name : \(self.passengerName ?? "Unknown")"
        }
        if self.passengerPassportNumber != nil {
            returnData += "\n Passenger Passport Number : \(self.passengerPassportNumber ?? "Unknown")"
        }
        if self.address != nil {
            returnData += "\n Customer address : \(self.address ?? "Unknown")"
        }
        if self.email != nil {
            returnData += "\n Customer Email : \(self.email ?? "email@mad.com")"
        }
        if self.mobile != nil {
            returnData += "\n  Passenger Mobile : \(self.mobile ?? "")"
        }
       
        return returnData
    }
    
//    func registerUser(){
//        print("Enter Customer ID : ")
//        self.customerID = (Int)(readLine()!)
//        print("Enter Customer Name : ")
//        self.customerName = readLine()!
//        print("Enter Customer Address : ")
//        self.address = readLine()!
//        print("Enter Customer Email : ")
//        self.email = readLine()!
//        print("Enter Customer CreditCardInfo : ")
//        self.creditCardInfo = readLine()!
//        print("Enter Customer Shipping Info : ")
//        self.shippingInfo = readLine()!
//
//    }
}

