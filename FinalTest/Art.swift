//
//  Art.swift
//  FinalTest
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias purchaseItem = (artistID: String,name: Artist,quantity: Int )
class Art : Artist{
    
    private var artID: String?
    private var title : String?
    private var category : ArtCategory?
    private var price : Double?
    private var purchaseArts : [purchaseItem]
    private var purchaseDate : Date?
   // private var dataHelper = DataHelper()
    
    var ArtID : String? {
        get{ return self.artID }
        set{ self.artID = newValue}
    }
    var Title : String? {
        get { return self.title }
        set { self.title = newValue }
    }
    var Category : ArtCategory? {
        get{ return self.category }
        set{ self.category = newValue}
    }
   
    var Price : Double?{
        get{ return self.price}
        set{ self.price = newValue}
    }
    var PurchaseDate : Date?{
        get { return self.purchaseDate }
        set{ self.purchaseDate = newValue}
    }

    override init(){
        self.artID = ""
        self.title = ""
        self.category = ArtCategory.None
        self.price = 0.0
        self.purchaseDate = DateFormatter().date(from: "")!
        self.purchaseArts = []
        super.init()
    }
    
    required init(artID: String, title: String, category: ArtCategory, price: Double, artistID: String, name: String, country: String,purchaseArts: String){
        self.artID = artID
        self.title = title
        self.category = category
        self.price = price
        self.purchaseArts = []
    super.init(artistID: artistID, name: name, country: country)
    }
    
    override func displayData() -> String{
        super.display()
    var returnData = ""
           returnData += " Art ID : \(self.artID ?? "")"
           returnData += "\n Product Name : \(self.title ?? "")"
        returnData += "\n Arts List : "
        if (self.purchaseArts.isEmpty){
            for (_,art,qty) in self.purchaseArts{
                returnData += "\n \tArtist : \(art.displayData())"
                returnData += "\n \tQuantity : \(qty)"
                
            }
        }else{
            returnData += "\n No Art in the order"        }
        
           returnData += "\n Category : \(self.category ?? ArtCategory.None)"
           returnData += "\n  Price : \(self.price ?? 0.0)"
    
         return returnData
}
    
    func purchaseart(){
        dataHelper.displayArts()
        print("Please enter Art ID to choose any Art from the list : ")
        let selectedArtistID : String = readLine()!
        
        if let selectedArtist = dataHelper.searchArtist(ArtistID: selectedArtistID){
            self.ArtID = selectedArtistID
            self.purchaseDate = Date()
            
            print("How many arts do you want ? : ")
            let qty : Int = (Int)(readLine()!) ?? 1
            
           // self.purchaseArts += [(artistID: selectedArtistID, artist: selectedArtist, quantity: qty)]
           // self.OrderStatus = OrderStatusList.Placed
            
        }else{
            print("Sorry...The purchase you entered is unavailable")
        }
    }
    
    func newArt(){
        print("Enter Art ID : ")
        self.artistID = readLine()!
        print("Enter Title : ")
        self.title = readLine()!
        print("Please choose art category : ")
        for category in ArtCategory.allCases{
            print("Enter \(category.rawValue) for  \(category)")
        }
        let choice = (Int)(readLine()!) ?? 5
        self.category = ArtCategory(rawValue: choice)!
        
        print("Enter Price : ")
        self.price = (Double)(readLine()!)
    }
    
}
    

