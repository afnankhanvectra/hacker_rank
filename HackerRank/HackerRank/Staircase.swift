//
//  Staircase.swift
//  Staircase
//
//  Created by afnan khan on 22/01/2022.
//
// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

func staircase(n: Int) -> Void {
    
    for lineNumber in 1...n {
        for currentLine in 1...n {
            if currentLine <= (n - lineNumber)  { print(" ", terminator: "")} else { print("#", terminator: "") }
        }
        print("")
    }
    
}
