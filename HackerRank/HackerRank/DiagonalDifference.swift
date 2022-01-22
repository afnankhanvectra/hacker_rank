//
//  DiagonalDifference.swift
//  DiagonalDifference
//
//  Created by afnan khan on 22/01/2022.
//
// https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation


func diagonalDifference(arr: [[Int]]) -> Int {
    var diagonal1 = 0
    var diagonal2 = 0
    let arrayCount =  arr[0].count
        for i in 0..<arrayCount   {
   diagonal1 = diagonal1 + arr[i][i]
    diagonal2 =  diagonal2 + arr[i][arrayCount - i  - 1 ]
}
var  sum = diagonal2 - diagonal1
if sum < 0 { sum = sum * -1}

return sum
}
