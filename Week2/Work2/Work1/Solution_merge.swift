//
//  Solution_merge.swift
//  Work1
//
//  Created by zhangke on 2020/11/22.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation


class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = (nums1[0..<m] + nums2).sorted()
    }
}

