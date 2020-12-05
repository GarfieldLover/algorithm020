//
//  Solution_mergeTwoLists.swift
//  Work1
//
//  Created by zhangke on 2020/11/22.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_mergeTwoLists {
    
    func doSolution()  {
        var num = [1,2,3,4,5,6,7]
        var k = 3
        print(num)
    }
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
        
        func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            if l1?.next == nil {
                return l2
            }
            
            if l2?.next == nil {
                return l1
            }
            
            if l1?.val ?? 0 < l2?.val ?? 0 {
                l1?.next = mergeTwoLists(l1?.next, l2)
                return l1
            } else {
                l2?.next = mergeTwoLists(l2?.next, l1)
                return l2
            }
            
        }
          
        
    }
        
    
    
    
}
