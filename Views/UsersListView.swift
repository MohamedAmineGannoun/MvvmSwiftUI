//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by Amine Gannoun on 29/03/2024.
//

import SwiftUI

struct UsersListView: View {
    
    @StateObject var viewModel = UsersListViewModel()
    
    var body: some View {
        NavigationStack{
            NavigationView(content: {
                
                List(viewModel.users, id: \.id) { user in
                    UserView(user: user)
                }.onAppear(perform: {
                    viewModel.fetchUsers()
                })
                
            }).navigationTitle("Users")
        }
    }
}

#Preview {
    UsersListView()
}


