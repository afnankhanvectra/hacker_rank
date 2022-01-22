//
//  CompareTriplets.swift
//  CompareTriplets
//
//  Created by afnan khan on 22/01/2022.
//
// https://www.hackerrank.com/challenges/compare-the-triplets/problem
import Foundation

// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {

var solution = [0,0]
for i in 0...a.count - 1{
    if a[i] > b[i] {solution[0] = solution[0] + 1 }
    if a[i] < b[i] {solution[1] = solution[1] + 1 }
  }
return solution
}

