//
//  TaumBday.swift
//  HackerRank
//
//  Created by afnan khan on 05/02/2022.
//

// ///https://www.hackerrank.com/challenges/taum-and-bday/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign


import Foundation

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {

    var totalCost = 0
    let whiteGiftCost =  (bc > wc + z) ? (wc + z) : bc
    let  whiteGift = b * whiteGiftCost
    
    let blackGiftCost =  (wc > bc + z) ? (bc + z) : wc
    let  blackGift = w * blackGiftCost

    totalCost = whiteGift + blackGift
    return totalCost

}
