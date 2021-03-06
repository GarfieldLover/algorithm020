//
//  ContentView.swift
//  Work1
//
//  Created by zhangke on 2020/11/16.
//  Copyright © 2020 Interview. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var users: [String] = ["两数之和", "删除排序数组中的重复项", "旋转数组", "合并两个有序链表"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    navigationBarTitle("作业列表")
                }
                
                Section {
                    ForEach(users, id: \.count) {user in
                        WorkRow(user: user)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
