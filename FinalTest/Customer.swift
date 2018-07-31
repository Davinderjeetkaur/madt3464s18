//
//  Customer.swift
//  FinalTest
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Customer{
    private var customerID: String?
    private var name : String?
    private var address : String?
    private var contactNo : String?
    private var password : String?
    
    var CustomerID : String?{
        get{ return self.customerID }
        set{ self.customerID = newValue }
    }
    
    var CustomerName : String?{
        get{ return self.name }
        set{ self.name = newValue }
    }
    
   
    var Address : String?{
        get { return self.address}
        set {self.address = newValue}
    }
    var ContactNo : String?{
        get { return self.contactNo}
        set {self.contactNo = newValue}
    }
    var Password : String?{
        get { return self.password}
        set {self.password = newValue}
    }
    init(){
        self.customerID = ""
        self.name = ""
        self.address = ""
        self.contactNo = ""
        self.password = ""
    }
    
    init(customerID: String, name: String, address: String, contactNo: String, password: String){
        self.customerID = customerID
        self.name = name
        self.address = address
        self.contactNo = contactNo
        self.password = password
    }
    
    func displayData() -> String {
        
                var returnData = ""
              returnData += " Customer ID : \(self.customerID ?? "")"
                returnData += "\n Customer Name : \(self.name ?? "")"
                returnData += "\n Address : \(self.address ?? "")"
                returnData += "\n Contact No : \(self.contactNo ?? "")"
                returnData += "\n Password : \(self.password ?? "")"
        
                return returnData
        
    }
    
    func registercustomer(){
        print("Enter Customer ID : ")
        self.customerID = readLine()!
        print("Enter Customer Name : ")
        self.name = readLine()!
        print("Enter Customer Address : ")
        self.address = readLine()!
        print("Enter Customer Contact No : ")
        self.contactNo = readLine()!
        print("Enter Customer Password : ")
        self.password = readLine()!
    }
}
