//
//  ContactService.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class ContactService {
    @MainActor
     static func fetchContacts() async throws -> [Contact] {
        let snapshot = try await Firestore
            .firestore()
            .collection("contacts")
            .order(by: "name", descending: true)
            .getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: Contact.self) })
    }
    
    
    
    
}
