//
//  Solution_plusone.swift
//  Work1
//
//  Created by zhangke on 2020/11/22.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_plusone {
    
    
    func doSolution()  {
        var num = [9,9,9]
        plusOne(num)
        var k = 3
        print(num)
    }
    
    func plusOne(_ digits: [Int]) -> [Int] {
        //999 - 1000 123
        var res = digits
        var carray = 1
        
        for i in (0..<res.count).reversed() {
            let count = res[i] + carray
            res[i] = count % 10
            carray = count / 10
        }
        
        if carray != 0 {
            res.insert(carray, at: 0)
        }
        return res
    }
    
}
