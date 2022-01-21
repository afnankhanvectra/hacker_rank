//
//  NumberLineJump.swift
//  NumberLineJump
//
//  Created by afnan khan on 20/01/2022.
//

//https://www.hackerrank.com/challenges/kangaroo/problem

import Foundation



func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
     if v1 <= v2  { return "NO" }
        
        var kangaor1Position = x1
        var kangaor2Position = x2
        
        while kangaor1Position < kangaor2Position {
            
            kangaor1Position = kangaor1Position +  v1
            kangaor2Position = kangaor2Position +  v2
             if kangaor1Position == kangaor2Position { return "YES"
            }
        }
        
        return "NO"

}

