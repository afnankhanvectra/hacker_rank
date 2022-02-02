//
//  SquaresBetweenRange.swift
//  SquaresBetweenRange
//
//  Created by afnan khan on 26/01/2022.
//

import Foundation
//https://www.hackerrank.com/challenges/sherlock-and-squares/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign
// Loginc is first find firsr square then second
// Calculate the distance between them
// next would be ba +  distace  +  2



func squares(a: Int, b: Int) -> Int {
    
    var firsrSquare  = -1
    var secondSquare = -1
    
    var numberOfSquares = 0
    
    for number in (a ... b) {
        
        if isPerfectSquare(number: Double(number) ) ==  true {
            numberOfSquares = numberOfSquares + 1

            if firsrSquare == -1 { firsrSquare =  number}
            else  if secondSquare == -1 { secondSquare = number
                break
            }
        }
    }
    
    if secondSquare == -1  { return numberOfSquares}
    
    var differeceBetweenNumbers = secondSquare - firsrSquare
    var currentNumber = secondSquare
    
    while ( currentNumber + differeceBetweenNumbers + 2 ) <=  b {
        
       let  newNumber = currentNumber + differeceBetweenNumbers + 2
        differeceBetweenNumbers = differeceBetweenNumbers + 2
        numberOfSquares = numberOfSquares  +  1
        
        currentNumber = newNumber
    }

    
    return numberOfSquares
}






private func isPerfectSquare(number : Double) -> Bool {
    let root = sqrt(number)
    return floor(root) == root
}




