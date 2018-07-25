//
//  PlaneType.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class PlaneType : IDisplay {
    
    var planetypeID : Int?
    var planetotalseats : String?
    var planetypemap : String?
    
    var PlaneTypeID : Int? {
        get{ return self.planetypeID }
        set{ self.planetypeID = newValue}
    }
    var PlaneTotalSeats : String? {
        get{ return self.planetotalseats }
        set{ self.planetotalseats = newValue}
    }
    var PlaneTypeMap : String? {
        get{ return self.planetypemap }
        set{ self.planetypemap = newValue}
//
//        for row in 0...2{
//        //    for col in 0...2{
//        //        if row == 0{
//        print("\(seatmap[row])\(row + 1)")
//        //        }
//        //        print(seatmap[row][col])
//        //    }
//        }
        
    }
    
    
    
    init(){
        self.planetypeID = 0
        self.planetotalseats = ""
        self.planetypemap = ""
        
    }
    
    init(planetypeID: Int, planetotalseats: String, planetypemap: String){
        self.planetypeID = planetypeID
        self.planetotalseats = planetotalseats
        
        self.planetypemap = planetypemap
        
    }
    
    func displayData() -> String {
        var returnData = ""
        
        returnData += "\n Plane Type ID : \(self.planetypeID ?? 0)"
        returnData += "\n Plane Total Seats : \(self.planetotalseats ?? "" )"
        returnData += "\n Plane Type Map : \(self.planetypemap ?? "" )"
        
        return returnData
    }
    
    func newProduct(){
        print("Enter Plane Type ID : ")
        self.planetypeID = (Int)(readLine()!)
        print("Enter Plane Total Seats : ")
        self.planetotalseats = readLine()
        print("Enter Plane Type Map : ")
        self.planetypemap = readLine()
        
        
    }
}

