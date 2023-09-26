//
//  AddContactViewModel.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import Foundation

class AddContactViewModel: ObservableObject {
    
    @Published var id = UUID().uuidString
    @Published var name = ""
    @Published var surname = ""
    @Published var phoneNumber = ""
    @Published var email = ""
    
    func createContact() async throws {
        try await AddContactService.shared.createContact(
            id: id,
            name: name,
            surname: surname,
            phoneNumber: phoneNumber,
            email: email
        )
    }
}
