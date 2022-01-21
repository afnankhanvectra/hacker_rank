//
//  ViewController.swift
//  HackerRank
//
//  Created by afnan khan on 20/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        extraLongFactorials(n: 12)
        
        let result = kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
        print(result)
        
        countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5,-6])
        
    }
    
    
    
}

