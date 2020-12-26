//
//  Solution_maximalSquare.swift
//  Work1
//
//  Created by zk on 2020/12/26.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation
class Solution_maximalSquare {
    
    func doSolution()  {
       let xx =  maximalSquare([["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
                      
                     )
        
        
    }
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        guard matrix.count > 0 else { return 0 }
        
        var maxSide = 0
        var dp = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        
        for i in 0 ..< matrix.count {
            for j in 0 ..< matrix[i].count {
                guard matrix[i][j] == "1" else { continue }
                
                if i == 0 || j == 0 {
                    dp[i][j] = 1
                } else {
                    dp[i][j] = min(dp[i - 1][j], dp[i - 1][j - 1], dp[i][j - 1]) + 1
                }
                
                maxSide = max(maxSide, dp[i][j])
            }
        }
        
        return maxSide * maxSide
    }
    
    
}
