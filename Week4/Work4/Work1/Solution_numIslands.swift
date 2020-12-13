//
//  Solution_numIslands.swift
//  Work1
//
//  Created by zk on 2020/12/13.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_numIslands {
    
    func doSolution()  {
        numIslands([
            ["1","1","0","0","0"],
            ["1","1","0","0","0"],
            ["0","0","1","0","0"],
            ["0","0","0","1","1"]
        ])

    }
    
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.count == 0 || grid[0].count == 0 { return 0 }
        var res = 0, grid = grid
        
        func dfs(_ i: Int, _ j: Int) {
            if i < 0 || i >= grid.count || j < 0 || j >= grid[0].count {
                return
            }
            if grid[i][j] != "1" {
                return
            }
            // 做标记
            grid[i][j] = "0"
            // 上下左右进行递归标记
            dfs(i - 1, j)
            dfs(i + 1, j)
            dfs(i, j - 1)
            dfs(i, j + 1)
        }
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == "1" {
                    dfs(i, j)
                    res += 1
                }
            }
        }
        
        return res
    }
    
    
}
