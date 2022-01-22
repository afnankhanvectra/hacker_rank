//
//  BirthdayCakeCandle.swift
//  BirthdayCakeCandle
//
//  Created by afnan khan on 22/01/2022.
//
// https://www.hackerrank.com/challenges/birthday-cake-candles/problem

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    var tallestCandle = 0
    var countOfTalestCandle = 0
    for candle in candles {
        if candle < tallestCandle {
            continue
        }
        if candle > tallestCandle {
            tallestCandle = candle
            countOfTalestCandle =   1
        } else if  candle == tallestCandle {
            countOfTalestCandle = countOfTalestCandle + 1
        }
        
    }
    return countOfTalestCandle
    
}
