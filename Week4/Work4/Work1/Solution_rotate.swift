//
//  Solution_ rotate.swift
//  Work1
//
//  Created by zhangke on 2020/11/22.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation


class Solution_rotate {
    
    func doSolution()  {
        var num = [1,2,3,4,5,6,7]
        var k = 3
        rotate(&num, k: &k)
        print(num)
    }
    
    
    private func rotate(_ nums: inout [Int], k: inout Int) {
        
        k %= nums.count

        var start = 0
        var end = nums.count - 1
        reverse(&nums, start: &start, end: &end)
        
        start = 0
        var reversek = k - 1
        reverse(&nums, start: &start, end: &reversek)
        
        reversek = k
        end = nums.count - 1
        reverse(&nums, start: &reversek, end: &end)
   
    }
    
    private func reverse(_ nums: inout [Int], start: inout Int, end: inout Int) {
        while start < end {
            let temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp
            start += 1
            end -= 1
        }
    }
    
    
    
    
}

