//
//  Solution_topKFrequent.swift
//  Work1
//
//  Created by zhangke on 2020/11/28.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_topKFrequent {
    
    var array = [Int]()
    
//    func preorder(_ root: Node?) -> [Int] {
//        if root != nil {
//            array.append(root!.val)
//            for node in root!.children {
//                preorder(node)
//            }
//        }
//        return array
//    }
    
    
    func doSolution()  {
        print(topKFrequent([1,6,1,2,2,3], 2))
    }
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        return nums.reduce(into: [:]) { (parames, number) in
            parames[number,default: 0] += 1
        }.sorted(by: {$0.value > $1.value}).prefix(k).map{$0.key}
    }
    
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        var result = [Int]()
//        var dict = [Int:Int]()
//        for n in nums {
//            if let num = dict[n] {
//                dict[n] = num + 1
//            }else{
//                dict[n] = 1
//            }
//        }
//        
//        let rD = dict.sorted { (d1, d2) -> Bool in
//            return d1.value > d2.value
//        }
//        
//        for i in 0..<k {
//            result.append(rD[i].key)
//        }
//        
//        return result
//        
//    }
}
