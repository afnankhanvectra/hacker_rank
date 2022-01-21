


//https://www.hackerrank.com/challenges/extra-long-factorials/problem

import Foundation


func extraLongFactorials(n: Int) -> Void {
    
    var value = [1]
    for i in (1...n) {
        value =   multiply(number: i, andArray: value)
    }
    
    for digit in value {
        print("\(digit)", terminator: "")
    }
}


private func multiply(number num : Int , andArray arr : [Int]) -> [Int]{
    
    var answerArray = [Int]()
    var reminder = 0
    
    for index in (0...arr.count - 1 ).reversed() {
        
        let multipledValue = num * arr[index]
        let realValue = multipledValue +  reminder
        
        if realValue < 10 {
            reminder = 0
            answerArray.append(realValue)
        } else {
            reminder = realValue / 10
            answerArray.append(realValue % 10)
        }
    }
    
    
    if reminder > 0 {
        
        var value =  reminder
        while value > 9  {
            answerArray.append(value % 10)
            value =  value / 10
            
        }
        if value != 0 {
            answerArray.append(value)
        }
        
    }
    answerArray = answerArray.reversed()
    return answerArray
    
}

