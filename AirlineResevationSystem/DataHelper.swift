//
//  DataHelper.swift
//  AirlineResevationSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class DataHelper{
    var ProductList = [Int : Flight]()
    
    init(){
        self.loadProducts()
    }
    
    func loadProducts(){
        let davinder = Flight(flightID: 111, flightfrom: "Canada", flightto: "India", flightschdate: "23/07/2018", flightairlineID: 23, flightairplaneID: "ppp", flightpilotID: "pl")
        ProductList[davinder.flightID!] = davinder
        
       let parveen = Flight(flightID: 112, flightfrom: "America", flightto: "Canada", flightschdate: "30/07/2018", flightairlineID: 45, flightairplaneID: "ddd", flightpilotID: "ggg")
        ProductList[parveen.flightID!] = parveen
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
    }
    
    func displayFlight(){
        //closure
        for (_,prod) in ProductList.sorted(by: {$0.key < $1.key}){
            print("\(prod.displayData())")
        }
    }
}



