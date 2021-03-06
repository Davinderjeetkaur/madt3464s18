//
//  DataHelper.swift
//  Airline
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var FlightList = [Int : Flight]()
    var PassengerList = [Int : Passenger]()
  var AirlinesList = [Int : Airlines]()
    init(){
        self.loadFlight()
        self.loadPassengerData()
       self.loadAirlinesData()
        
    }
    
    func loadFlight(){
        FlightList = [:]
        do{
            let davinder = try Flight(flightID: 111, flightfrom: cityList.Paris, flightto: cityList.Toronto, flightschdate: "23/07/2018", flightairlineID: 23, flightairplaneID: "ppp", flightpilotID: "pl",flightTypelist: "up")
       FlightList[davinder.flightID!] = davinder
        
        let parveen = try Flight(flightID: 112, flightfrom: cityList.Brampton, flightto: cityList.India, flightschdate: "30/07/2018", flightairlineID: 45, flightairplaneID: "ddd", flightpilotID: "ggg",flightTypelist: "ui")
      FlightList[parveen.flightID!] = parveen
        //
        //        let flask = Product(productID: 102, productName: "Flask", manufecturer: "Contigo", unitPrice: 20, category: ProductCategory.Appliances)
        //        ProductList[flask.ProductID!] = flask
        //
        //        let zelda = Product(productID: 103, productName: "The Legend of Zelda", manufecturer: "Nintendo", unitPrice: 27.97, category: ProductCategory.Books)
        //        ProductList[zelda.ProductID!] = zelda
        //
        //        let sapiens = Product(productID: 104, productName: "Sapiens", manufecturer: "Yuval Noah Harari", unitPrice: 11.89, category: ProductCategory.Books)
        //        ProductList[sapiens.ProductID!] = sapiens
        //
        //        let socks = Product(productID: 105, productName: "Puma Men's 6 pack Low Cut Socks", manufecturer: "Puma", unitPrice: 23.40, category: ProductCategory.Clothing)
        //        ProductList[socks.ProductID!] = socks
        //
        //        let dress = Product(productID: 106, productName: "Women's Vintage Floral Cocktail Dress", manufecturer: "OWIN", unitPrice: 45, category: ProductCategory.Clothing)
        //        ProductList[dress.ProductID!] = dress
        }catch{
            print("Error: \(error)")
        }
        
    }
    func displayFlight(){
      print("Flight Details")
        //Util.drawLine()
        print("\t\t Flight ID \t\t Flight From \t\t Flight To \t\t flightschdate \t\t")
        for (_, value) in self.FlightList.sorted(by: { $0.key < $1.key }){
           // Util.drawLine()
            print("\t \(value.FlightID!) ----------- \(value.Flightfrom) --------- \(value.Flightto) --------- \(value.Flightschdate!)")
        }
       // Util.drawLine()
    }
    
    func searchFlight(flightID : Int) -> Flight?{
        if FlightList[flightID] != nil{
            return FlightList[flightID]! as Flight
        }
        else{
            print("Sorry..The search flight number you have entered is not available")
            return nil
        }
    }
    
    func loadPassengerData(){
       PassengerList = [:]
        
        let davinder = Passenger(passengerID: 101, passengerName: "davinder", address: "Brampton", email: "dav@gmail.com", passengerPassportNumber: "l6x5n3", mobile: "4478454645454", birthdate: "5/06/1994")
       PassengerList[davinder.PassengerID!] = davinder
        
        let parveen = Passenger(passengerID: 102, passengerName: "parveen", address: "newmarket", email: "psohi@GMAIL.COM", passengerPassportNumber: "H89101", mobile: "4167319287", birthdate: "22/03/1994")
        PassengerList[parveen.PassengerID!] = parveen
    }
//    open class DataHelper2{
//
//        var AirlinesList = [Int : Airlines]()
//
//
//
//        init(){
//            self.loadAirlinesData()
//
//        }
    
        
        func loadAirlinesData(){
               AirlinesList = [:]
          
            let Jetairways =  Airlines(airlinesID: 101, airlinesDes: "Jetairways", airlinesType: "National")
            
            AirlinesList[Jetairways.AirlinesID!] = Jetairways
            
            let Britishairways =  Airlines(airlinesID: 102, airlinesDes: "Britishairways", airlinesType: "International")
            
            AirlinesList[Britishairways.AirlinesID!] = Britishairways
            
            let AirIndia =  Airlines(airlinesID: 103, airlinesDes: "AirIndia", airlinesType: "Domestic")
            AirlinesList[AirIndia.AirlinesID!] = AirIndia
            
            let Aircanada =  Airlines(airlinesID: 104, airlinesDes: "Aircanada", airlinesType: "National")
            
            AirlinesList[Aircanada.AirlinesID!] = Aircanada
            }
        
        func displayAirlines(){
            print("Airline Details")
            print("\t\t Airline ID \t\t Airline Des  \t\t Airlines Type \t\t ")
            for (_, value) in self.AirlinesList.sorted(by: { $0.key < $1.key }){
                // Util.drawLine()
                print("\t \(value.AirlinesID!) ----------- \(value.AirlinesDes) --------- \(value.AirlinesType)")
            }            //            for (_,air) in self.AirlinesList.sorted(by: { $0.key < $1.key} ){
//
//                print("\(air.displayData())")
            
                
            }
            
        }
//    func displayFlight(){
//        //closure
//        for (_,prod) in FlightList.sorted(by: {$0.key < $1.key}){
//            print("\(prod.displayData())")
//        }
//    }
   // }
    

    
    





