//
//  WorkRow.swift
//  Work1
//
//  Created by zhangke on 2020/11/18.
//  Copyright © 2020 Interview. All rights reserved.
//

import SwiftUI

struct WorkRow: View {
    let user: String
    
    var body: some View {
        VStack {
            Text(user)
                .foregroundColor(.black)
                .lineLimit(0)
                .onTapGesture {
                    if self.user == "两数之和" {
                        Solution_twoSum().twoSumQ()
                    }
                    if self.user == "删除排序数组中的重复项" {
                        Solution_removeDuplicates().removeDuplicates()
                    }
                    if self.user == "旋转数组" {
                        Solution_rotate().doSolution()
                    }
            }
        }
        
    }
}

struct WorkRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkRow(user: "")
    }
}
