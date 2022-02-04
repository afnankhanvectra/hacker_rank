//
//  MigratoryBirds.swift
//  HackerRank
//
//  Created by afnan khan on 05/02/2022.
//

// https://www.hackerrank.com/challenges/migratory-birds/problem

import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    
    var eyeSightMap: [Int : Int] = [:]
    
    for bird in arr {
        eyeSightMap[bird] =   eyeSightMap[bird] ==  nil ? 0 :  eyeSightMap[bird]! +  1
    }
    
    var maxValueCome = 0
    var minimumValue : Int = Int(INT_MAX)

    
    for eyeSight in eyeSightMap.keys {
        
        let value = eyeSightMap[eyeSight]
        if value! > maxValueCome  {
            maxValueCome =  value!
            minimumValue = eyeSight
            
        }
        if value == maxValueCome {
            if minimumValue > eyeSight {minimumValue = eyeSight }
        }
    }
    return minimumValue
 
}

