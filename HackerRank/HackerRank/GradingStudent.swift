//
//  GradingStudent.swift
//  GradingStudent
//
//  Created by afnan khan on 20/01/2022.
//

// https://www.hackerrank.com/challenges/grading/problem

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    
        var finalGradsArray = [Int]()
        
        for grade in grades {
            if grade < 38 {
                finalGradsArray.append(grade)
                continue
            }
            if grade % 5 < 3 {
                finalGradsArray.append(grade)
            } else {
                finalGradsArray.append(grade +  (5 - grade % 5))
            }
        }
        return finalGradsArray
}
