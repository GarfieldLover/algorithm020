//
//  Solution_lemonadeChange.swift
//  Work1
//
//  Created by zk on 2020/12/13.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation


class Solution_lemonadeChange {
    
    func doSolution()  {
        lemonadeChange([5,5,5,10,20])
    }
    
    //贪心
    func lemonadeChange(_ bills: [Int]) -> Bool {
        //定义两个"计数器", 1个记5, 1个记10
        var five = 0, ten = 0
        //循环
        for i in 0..<bills.count {
            if bills[i] == 5 {
                //如果是5 5的计数器 + 1
                five += 1
                
            } else if bills[i] == 10 {
                //如果是10 10的计数器 + 1, 5的计数器 - 1
                five -= 1
                ten += 1
                
            } else if bills[i] == 20  {
                //能走到这里, 说明 bills[i] = 20
                //我们直接判断 10的计数器是否 > 0
                //10的计数器 > 0 说明可以找1张10元, 1张5元
                //10的计数器 - 1, 5的计数器 - 1
                ten -= 1
                five -= 1
                
            } else {
                //10的计数器 < 0, 说明要3张5元
                //5的计数器 - 3
                five -= 3
            }
            //最后判断, 5的计数器是否小于0, 小于说明不能满足账单需求
            if five < 0 {
                
                return false
            }
        }
        
        return true
        
    }
   
}
