//
//  Solution_lowestCommonAncestor.swift
//  Work1
//
//  Created by zk on 2020/12/5.
//  Copyright © 2020 Interview. All rights reserved.
//

import Foundation

class Solution_lowestCommonAncestor {

    class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || root === p || root === q { return root }
        
        //递归左子树
        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)
        
        //左右都有，则为root
        if left != nil && right != nil { return root }
        //返回left节点
        if left != nil { return left }
        if right != nil { return right }
        
        return nil
    }
    
    
}
