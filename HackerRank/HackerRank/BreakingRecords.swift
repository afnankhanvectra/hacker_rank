//
//  BreakingRecords.swift
//  HackerRank
//
//  Created by afnan khan on 05/02/2022.
//
// https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem



import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    
    var minimumScore = 0
    var maxScore = 0
    
    var minimumValue = INT_MAX
    var maxValue = -1

    
    for score in scores {
        
        if score <  minimumValue {
            minimumScore =  minimumScore + 1
            minimumValue = Int32(score)
        }
        
        if score >  maxValue {
            maxScore =  maxScore + 1
            maxValue = score
        }
        
    }
    
    return [maxScore - 1 , minimumScore - 1]

}

