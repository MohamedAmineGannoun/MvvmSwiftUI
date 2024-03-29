//
//  UsersListViewModel.swift
//  MVVMSwiftUI
//
//  Created by Amine Gannoun on 29/03/2024.
//

import Foundation
import Combine

class UsersListViewModel : ObservableObject {
    
    @Published var users : [User]  = []
    private var cancellables : Set<AnyCancellable> = []
    
    
    func fetchUsers(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .receive(on: DispatchQueue.main)
            .decode(type: [User].self, decoder: JSONDecoder())
            .sink { completion in
                
            } receiveValue: { [weak self] users in
                self?.users = users
            }.store(in: &cancellables)

        
        
    }
    
}
