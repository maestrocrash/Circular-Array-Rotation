//
//  main.swift
//  Circular Array Rotation
//
//  Created by Shakhvorostov on 27/09/2019.
//  Copyright © 2019 Shakhvorostov. All rights reserved.
//

import Foundation

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    var ab: [Int] = []
    var ba = a
    var index = 0
    while index != queries[0]{
        ab.append(0)
        index += 1
    }
    
    var i: Int = 0
    while i != k {
        ab[0] = ba[ba.count-1]
        
        for i in 0 ..< ab.count-1 {
            ab[i+1] = ba[i]
        }
    
        i += 1
        ba = ab
    }
    
    for i in 0 ..< queries[2]{
        print(ba[i])
    }
    
    return ab
}

circularArrayRotation(a: [1,2,3,], k: 2, queries: [3,2,3])

