//
//  Solution_countSubString.swift
//  Work1
//
//  Created by zk on 2020/12/26.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_countSubString {
    
    func doSolution()  {
       print(countSubstrings("aaa"))
      
        
    }
    func countSubstrings(_ s: String) -> Int {
        guard s.count > 0 else {
            return 0
        }
        
        var dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        
        var res = 0
        
        let chars = Array(s)
        
        for j in 0..<chars.count {
            
            for i in 0...j {
                
                if chars[i] == chars[j] && (j - i < 2 || dp[i + 1][j - 1]) {
                    dp[i][j] = true
                    res += 1
                }
            }
        }
        
        return res
        
    }
    
}
