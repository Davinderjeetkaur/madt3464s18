//
//  AirlinesEnquiry.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class AirlinesEnquiry{
    var enquiryID : Int?
    var enquirytype : String?
    var enquirytitle : String?
    var enquirydes : String?
    var enquirydate : String?
   
    
    
    init(){
        self.enquiryID = 0
        self.enquirytype = ""
        self.enquirytitle = ""
        self.enquirydes = ""
        self.enquirydate = ""
      
    }
    init(enquiryID : Int, enquirytype : String, enquirytitle : String, enquirydes : String, enquirydate : String){
        self.enquiryID = enquiryID
        self.enquirytype = enquirytype
        self.enquirytitle = enquirytitle
        self.enquirydes = enquirydes
        self.enquirydate = enquirydate
        
    }
    
    func displayData()  {
        
        
        print("Enquiry ID : \(self.enquiryID ?? 0)")
        print("Enquiry Type : \(self.enquirytype ?? "Unknown")")
        print("Enquiry Title : \(self.enquirytitle ?? "Unknown")")
        print("Enquiry Description : \(self.enquirydes ?? "Unknown")")
        print("Enquiry Date : \(self.enquirydate ?? "Unknown")")
      
    }
    
}

