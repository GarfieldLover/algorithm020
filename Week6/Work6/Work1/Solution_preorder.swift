//
//  Solution_preorder.swift
//  Work1
//
//  Created by zhangke on 2020/11/28.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation


class Solution_preorder {
    
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
        print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
    }
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        if strs.count == 0 {
            return []
        }
        if strs.count == 1 {
            return [strs]
        }
        // key: 字符串中每个字母出现的次数组成的字符串，value：异位词数组
        var map: [String: [String]] = [:]
        for str in strs {
            // 字母出现的次数数组，按字母ASCII索引-'a' 保存对应字母出现次数
            var alphabet = [Int](repeating: 0, count: 26)
            let aScalarValue = "a".unicodeScalars.first!.value
            for scalar in str.unicodeScalars {
                alphabet[Int(scalar.value - aScalarValue)] += 1
            }
            // map中没有这个key
            let key = alphabet.description
            if !map.keys.contains(key) {
                map[key] = [String]()
            }
            map[key]!.append(str)
        }
        return Array(map.values)
    }
    
    
    

}
