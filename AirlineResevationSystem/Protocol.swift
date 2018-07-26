//
//  Protocol.swift
//  AirlineResevationSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//protocol or interface
protocol IDisplay
{
    func display() -> String
}
public protocol CaseIterable {
    associatedtype AllCases: Collection where AllCases.Element == Self
    static var allCases: AllCases { get }
}
