//
//  TimeCoversion.swift
//  TimeCoversion
//
//  Created by afnan khan on 22/01/2022.
//
/// https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

func timeConversion(s: String) -> String {
    
    let result = s.split(separator: ":")
    let hours = Int(result[0])
    let seconds = Int(result[2].prefix(2))
    let amPmIndex = result[2].index(result[2].endIndex, offsetBy: -2)
    
    let amPmString = result[2][amPmIndex...]
    
    var resultHours = hours
    
    if amPmString.uppercased() == "AM" && hours == 12 {
        resultHours = 0
    }
    if amPmString.uppercased() == "PM" && hours != 12{
        resultHours = resultHours! + 12
    }
    
    
    let finalResult = String(format:"%02i:\(result[1]):%02i", resultHours as! CVarArg,seconds as! CVarArg)
    return finalResult
}
