//
//  Wage.swift
//  Window-Shopping
//
//  Created by Don Gordon on 8/25/18.
//  Copyright © 2018 DGsolutions. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
