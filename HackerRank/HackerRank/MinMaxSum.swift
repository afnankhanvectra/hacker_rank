//
//  MinMaxSum.swift
//  MinMaxSum
//
//  Created by afnan khan on 22/01/2022.
//
//https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    
    var minimum : Int64 = Int64(LONG_MAX)
    var maximum : Int64 = 0
    for escapingValue in arr {
        var sum : Int64 = 0
        var isEscaped =  false
        for nestedValue in arr {
            if nestedValue == escapingValue && isEscaped == false { isEscaped =  true
                continue}
            sum = sum +  Int64(nestedValue)
        }
        if minimum > sum  { minimum = Int64(sum)}
        if maximum < sum { maximum = sum }
    }
    
    print(minimum , maximum)
    
    
}

