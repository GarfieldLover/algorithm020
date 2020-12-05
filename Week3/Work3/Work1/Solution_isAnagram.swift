//
//  Solution_isAnagram.swift
//  Work1
//
//  Created by zhangke on 2020/11/28.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_isAnagram {
  
    func doSolution()  {
        print(isAnagram("dsfw", "fsdw"))
    }
    
    //数组存出现次数，asci码下标，两两想减得到每个下标值都为0, 很精妙
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var counter = [Int](repeating: 0, count: 26)
        let aCharUnicodeScalar = Int("a".unicodeScalars.first!.value)
        for scalar in s.unicodeScalars {
            counter[Int(scalar.value) - aCharUnicodeScalar] += 1
        }
        for scalar in t.unicodeScalars {
            counter[Int(scalar.value) - aCharUnicodeScalar] -= 1
        }
        guard counter.first(where: { $0 != 0 }) == nil else { return false }
        return true
    }

    
}


