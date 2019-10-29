//
//  Wage.swift
//  window-shopper
//
//  Created by Appinventiv on 02/10/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation

class Wage {
    class func calculateWage(forPrice price : Double, yourWage wage : Double) -> Int {
        return(Int(ceil(price/wage)))
    }
}
