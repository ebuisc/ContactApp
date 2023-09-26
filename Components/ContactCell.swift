//
//  ContactCell.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import SwiftUI

struct ContactCell: View {
    let contact: Contact
    var body: some View {
        NavigationLink(destination: AddContactView()) {
            HStack(spacing: 10) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .clipShape(Circle())
                    .foregroundColor(Color(.systemGray4))
                VStack(alignment: .leading, spacing: 2) {
                    HStack() {
                        Text(contact.name)
                            .fontWeight(.bold)
                        Text(contact.surname)
                            .fontWeight(.bold)
                        
                    }
                    Text(contact.phoneNumber)
                        .fontWeight(.semibold)
                    Text(contact.email ?? "")
                        .foregroundColor(.black)
                }
                    
            }
        }
    }
}

struct ContactCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactCell(contact: Contact(id: "1", name: "Ebubekir Talha", surname: "İşçimen", phoneNumber: "0552 212 2111", email: "ebubekiriscimen@gmail.com"))
    }
}
