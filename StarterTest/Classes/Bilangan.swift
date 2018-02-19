//
//  Bilangan.swift
//  starter-test
//
//  Created by Tri Rejeki on 18/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import Foundation

class Bilangan {
    
    var resultBilangan:Int = 0
    
    func isPrime(_ number: Int) -> Bool {
        let maxDivider = Int(sqrt(Double(number)))
        return number > 1 && !(2...maxDivider).contains { number % $0 == 0 }
    }
    
    func isOdd(_ number: Int) -> Bool {
        if number % 2 != 0 {
            return true
        }
        return false
    }
    
    func isEven(_ number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        }
        return false
    }
    
    func multiplyBilangan(bilangan1:Int, bilangan2:Int) {
        resultBilangan = bilangan1 * bilangan2
    }
    
    func addBilangan(bilangan1:Int, bilangan2:Int) {
        resultBilangan = bilangan1 + bilangan2
    }
}

