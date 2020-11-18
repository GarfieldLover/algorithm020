//
//  Solution.swift
//  Work1
//
//  Created by zhangke on 2020/11/18.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_twoSum {
    
    func twoSumQ()  {
        print(twoSum([2,7,3,2], 4))
    }
    
    //排序后夹逼
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let numbers = nums.sorted()
        
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            if numbers[left] + numbers[right] < target {
                left += 1
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            } else {
                return [nums.firstIndex(of: numbers[left])!, nums.lastIndex(of: numbers[right])!]
            }
        }
        
        return []
    }
    
    //用map字典存储配对的值 和下标
    /*
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsDic: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            //如果相减下表有值，就代表是加起来等于target，取得当前index，和dic的值也就是前一个index返回
            if let indexOfNumAfterMinus = numsDic[target - num] {
                return [indexOfNumAfterMinus, i]
            }
            numsDic[num] = i
        }
        return []
    }
    */

    //暴力双循环，求相加
    /*
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         for (currentIndex, currentNum) in nums.enumerated() {
             for nextIndex in currentIndex + 1..<nums.count {
                 if currentNum + nums[nextIndex] == target && currentIndex != nextIndex {
                     return [currentIndex, nextIndex]
                 }
             }
         }
         return []
     }
    */
}


