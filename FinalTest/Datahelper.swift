//
//  Datahelper.swift
//  FinalTest
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper {
    var ArtsList = [String : Art]()
    var ArtistList = [String : Artist]()
    init() {
        self.loadArtsData()
        self.loadArtistData()
    }
    
    func loadArtsData(){
        ArtsList = [:]
        
        let davinder =  Art(artID: "A111", title: "Telephone", category: ArtCategory.Antiques, price: 1.5, artistID: "Ar101", name: "Mr.Albert", country: "Canada", purchaseArts: "Tele")
        ArtsList[(davinder.ArtID!)] = davinder
            
        let john =  Art(artID: "A112", title: "Navojo", category: ArtCategory.Handcrafts, price: 1.6, artistID: "Ar102", name: "Mr.John", country: "America",purchaseArts: "AAA")
            ArtsList[(john.ArtID!)] = john
            
        let edward =  Art(artID: "A113", title: "The Caterpillar", category: ArtCategory.Painting, price: 3.6, artistID: "Ar103", name: "Mr.Edward", country: "Japan", purchaseArts: "BBB")
        ArtsList[(edward.ArtID!)] = edward
            
        let robert =  Art(artID: "A114", title: "The Imperial", category: ArtCategory.Skuplture, price: 5.6, artistID: "Ar104", name: "Mr.Robert", country: "Austrila",purchaseArts: "CCC")
            ArtsList[(robert.ArtID!)] = robert
            
        let mark =  Art(artID: "A115", title: "The Imagica", category: ArtCategory.Antiques, price: 4.6, artistID: "Ar105", name: "Mr.Mark", country: "UK",purchaseArts: "DDD")
            ArtsList[(mark.ArtID!)] = mark
        }
    
func displayArts(){
    print("Art List")

    print("\t ID \t\t Title \t\t\t\t Category \t\t Artist")
    for (_, value) in self.ArtsList.sorted(by: { $0.key < $1.key }){

        print("\t \(value.ArtID!) ------ \(value.Title!) ------ \(value.Category!) ------ \(value.ArtistName!)")
    }

  }
    func searchArtist(ArtistID : String) -> Artist?{
        if ArtistList[ArtistID] != nil{
            return ArtistList[ArtistID]! as Artist
        }
        else{
            print("Sorry..The Art number you have entered is not available")
            return nil
        }
    }
    func loadArtistData(){
        ArtistList = [:]
        
        let Manpreet = Artist(artistID: "AAA", name: "Man", country: "Canada")
        ArtistList[Manpreet.ArtistID!] = Manpreet
        
        let Simer = Artist(artistID: "SSS", name: "Simerjeet", country: "America")
        ArtistList[Simer.ArtistID!] = Simer
    }
    func displayArtist(){
        for (_, value) in self.ArtistList.sorted(by: { $0.key < $1.key }){
           
            print(value.displayData())
        }
        
    }
}







