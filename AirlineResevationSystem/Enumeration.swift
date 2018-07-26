//
//  Enumeration.swift
//  AirlineResevationSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//var dataHepler = DataHepler()
enum PlanetypeCategory: Int, CaseIterable {
    case Boeing = 1
    case Airbus = 2
    case Lockheed = 3
    case None = 4 
   
}
enum FlightTypelist : String,CaseIterable{
    case Aircanada
    case Delta
    case BritishAirways
    case JetAirways
    }

extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
