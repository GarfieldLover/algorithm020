//
//  Solution_removeDuplicates.swift
//  Work1
//
//  Created by zhangke on 2020/11/22.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_removeDuplicates {
    
    func removeDuplicates()  {
        var num = [0,0,1,1,1,2,2,3,3,4]
        print(removeDuplicates(&num))
    }
    
    private func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var i = 0
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}

