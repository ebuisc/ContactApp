//
//  ContactViewModel.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import Foundation


class ContactViewModel: ObservableObject {
    @Published var contacts = [Contact]()
    
    init() {
        Task {
            try await fetchContacts()
        }
    }
    
    @MainActor func fetchContacts() async throws {
        self.contacts = try await ContactService.fetchContacts()
        
    }
}
