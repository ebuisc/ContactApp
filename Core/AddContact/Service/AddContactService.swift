//
//  ContactService.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import Firebase
import FirebaseFirestoreSwift

class AddContactService {
    
    static let shared = AddContactService()
    
    func createContact(id: String, name: String, surname: String, phoneNumber: String, email: String ) async throws {
        let contact = Contact(id: id, name: name, surname: surname, phoneNumber: phoneNumber, email: email)
        guard let contactData = try? Firestore.Encoder().encode(contact) else {return}
        try await Firestore.firestore().collection("contacts").document(id).setData(contactData)
    }
    
}
