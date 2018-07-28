//
//  Flight.swift
//  Airline
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight {
    var flightID : Int?
    var flightfrom : cityList
    var flightto : cityList
    var flightschdate : String?
    var flightairlineID : Int?
    var flightairplaneID : String?
    var flightpilotID : String?
    var flightTypelist : String?
    
    var FlightID : Int? {
        get{ return self.flightID }
        set{ self.flightID = newValue}
    }
    var Flightfrom : cityList {
        get { return self.flightfrom }
        set { self.flightfrom = newValue }
    }
    var Flightto : cityList {
        get{ return self.flightto }
        set{ self.flightto = newValue}
    }
    var Flightschdate : String? {
        get{ return self.flightschdate}
        set{ self.flightschdate = newValue}
    }
    var FlightairlineID : Int?{
        get{ return self.flightairlineID}
        set{ self.flightairlineID = newValue}
    }
    var FlightairplaneID : String?{
        get{ return self.flightairplaneID}
        set{ self.flightairplaneID = newValue}
    }
    var FlightpilotID : String?{
        get{ return self.flightpilotID}
        set{ self.flightpilotID = newValue}
    }
    var Flighttypelist : String?{
        get{ return self.flightTypelist}
        set{ self.flightTypelist = newValue}
    }
    
    
    init(){
        self.flightID = 0
        self.flightfrom = cityList.None
        self.flightto = cityList.None
        self.flightschdate = ""
        self.flightairlineID = 0
        self.flightairplaneID = ""
        self.flightpilotID = ""
        self.flightTypelist = ""
        
    }
    init(flightID : Int, flightfrom : cityList, flightto : cityList, flightschdate : String, flightairlineID : Int, flightairplaneID : String, flightpilotID : String,flightTypelist : String){
        self.flightID = flightID
        self.flightfrom = flightfrom
        self.flightto = flightto
        self.flightschdate = flightschdate
        self.flightairlineID = flightairlineID
        self.flightairplaneID = flightairplaneID
        self.flightpilotID = flightpilotID
        self.flightTypelist = flightTypelist
    }
    
    func displayData() -> String {
        
                var returnData = ""
        
                returnData += " Flight ID : \(self.flightID ?? 0)"
           returnData += "\n Flight From : \(self.flightfrom ?? cityList.None)"
            returnData += "\n Flight To : \(self.flightto ?? cityList.None)"
                returnData += "\n Flight Schedule Date: \(self.flightschdate ?? "")"
                returnData += "\n Flight Airline ID : \(self.flightairlineID ?? 0)"
                returnData += "\n Flight Airplane ID : \(self.flightairplaneID ?? "")"
               returnData += "\n Flight Pilot ID : \(self.flightpilotID ?? "")"
              returnData += "\n FlightType List : \(self.flightTypelist ?? "")"
            return returnData
        
        
//        print("Flight ID : \(self.flightID ?? 0)")
//        print("Flight From : \(self.flightfrom ?? "Unknown")")
//        print("Flight To : \(self.flightto ?? "Unknown")")
//        print("Flight Schedule Date : \(self.flightschdate ?? "Unknown")")
//        print("Flight Airline ID : \(self.flightairlineID ?? 0)")
//        print("Flight Airplane ID : \(self.flightairplaneID ?? "Unknown")")
//        print("Flight Pilot ID : \(self.flightpilotID ?? "Unknown")")
//           print("Flight Type List : \(self.flightTypelist ?? "Unknown")")
//    }
//
}

//var returnData = ""
//        returnData += "\t \(self.flightID) ------ \(_(self.flightfrom.rawValue)) ------ \(_(self.flightto.rawValue)) ------ \(self.flightschdate) ------ \(self.flightairlineID)-----\(self.flightairplaneID)-----\(self.flightpilotID)-----\(self.flightTypelist ?? "")"
//return returnData
//  }

func newFlight(){
    
    print("Enter flight ID : ")
    self.flightID = (Int)(readLine()!)
    print("Enter Location  : ")
    for flightfrom in cityList.allCases
    {
        print("Enter \(flightfrom.rawValue) for \(flightfrom)")
    }
    let choice = (Int)(readLine()!)
    self.flightfrom = cityList(rawValue: choice!)!
    
    print("Enter Destination : ")
    for flightto in cityList.allCases
    {
        print("Enter \(flightto.rawValue) for \(flightto)")
    }
    _ = (Int)(readLine()!)
    self.flightto = cityList(rawValue: choice!)!
    
    print("Enter Schedule Date  : ")
    self.flightschdate = readLine()!
    print("Enter  Airline ID : ")
    self.flightairlineID = (Int)(readLine()!)
    
//    print("Please choose product category : ")
//    for category in ProductCategory.allCases{
//        print("Enter \(category.rawValue) for  \(category)")
//    }
//    let choice = (Int)(readLine()!) ?? 5
//    self.category = ProductCategory(rawValue: choice)
//
    print("Enter Pilot ID  : ")
    self.flightpilotID = readLine()!
    
   print("Enter  flightTypelist  : ")
    self.flightTypelist = readLine()!
  }
}
