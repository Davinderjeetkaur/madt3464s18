//
//  Artist.swift
//  FinalTest
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Artist{
    var artistID: String?
    var name : String?
    var country : String?
    
    var ArtistID : String? {
        get{ return self.artistID }
        set{ self.artistID = newValue}
    }
    var ArtistName : String? {
        get { return self.name}
        set { self.name = newValue }
    }
    var Country : String? {
        get{ return self.country }
        set{ self.country = newValue}
    }
   
    
    init(){
        self.artistID = ""
        self.name = ""
        self.country = ""
    }
    
    init(artistID: String, name: String, country: String){
        self.artistID = artistID
        self.name = name
        self.country = country
    }
    
    func displayData() -> String{
                var returnData = ""
        
               returnData += " Artist ID : \(self.artistID ?? "")"
               returnData += "\n Artist Name : \(self.name ?? "")"
                returnData += "\n Country : \(self.country ?? "")"
      
        
               return returnData
    }
    func display() {
        print("Artist ID: \(self.artistID ?? "Unknown")")
        print("Artist Name : \(self.name ?? "Unknown")")
        print("Country: \(self.country ?? "Unknown")")
    }
}
