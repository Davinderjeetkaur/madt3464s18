//
//  Employee.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-24.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee {
    var empID : Int?
    var empName : String?
    var empEmail : String?
    var empMob : String?
    var empAdd : String?
    var empDes : String?
    var empSin : String?
    
    
    init(){
        self.empID = 0
        self.empName = ""
        self.empEmail = ""
        self.empMob = ""
        self.empAdd = ""
        self.empDes = ""
        self.empSin = ""
    }
    init(empID : Int, empName : String, empEmail : String, empMob : String, empAdd : String, empDes : String, empSin : String){
        self.empID = empID
        self.empName = empName
        self.empEmail = empEmail
        self.empMob = empMob
        self.empAdd = empAdd
        self.empDes = empDes
        self.empSin = empSin
    }
    
    func displayData()  {
    
    
        print("Emp ID : \(self.empID ?? 0)")
        print("Emp Name : \(self.empName ?? "Unknown")")
        print("Emp Email : \(self.empEmail ?? "Unknown")")
        print("Emp Mob : \(self.empMob ?? "Unknown")")
        print("Emp Add : \(self.empAdd ?? "Unknown")")
        print("Emp Des : \(self.empDes ?? "Unknown")")
        print("Emp Sin : \(self.empSin ?? "Unknown")")
    }
    
}

