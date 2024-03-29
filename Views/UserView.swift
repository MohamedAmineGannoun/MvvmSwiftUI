//
//  UserView.swift
//  MVVMSwiftUI
//
//  Created by Amine Gannoun on 29/03/2024.
//

import SwiftUI

struct UserView: View {
    
    let user : User
    
    var body: some View {
        HStack {
            // Nom d'utilisateur à gauche
            Text(user.username)
                .font(.headline)
            
            Spacer()
            
            // VStack contenant email et phone à droite
            VStack(alignment: .trailing) {
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(user.phone)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 20) // Ajoute un décalage pour séparer du nom d'utilisateur
        }
        .padding()
    }
}

#Preview {
    UserView(user: User(id: 112, name: "name", username: "Username", email: "email", address: Address(street: "", suite: "", city: "", zipcode: "", geo: Geo(lat: "", lng: "")), phone: "Phone", website: "website", company: Company(name: "", catchPhrase: "", bs: "")))
}
