//
//  AppleAndOranges.swift
//  AppleAndOranges
//
//  Created by afnan khan on 20/01/2022.
//

// https://www.hackerrank.com/challenges/apple-and-orange/problem

import Foundation


func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
       var numberOfAppleDrop = 0
        var numberOforangesDrop = 0
        for apple in apples {
            let distance = a + apple
            if distance < s {continue}
            if distance > t {continue}

            numberOfAppleDrop = numberOfAppleDrop + 1
        }
        
        for orange in oranges {
            let distance = b + orange
            if distance > t {continue}
            if distance < s {continue}

            numberOforangesDrop = numberOforangesDrop + 1
         }
        print (numberOfAppleDrop)
        print (numberOforangesDrop)
    

}
