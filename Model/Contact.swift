//
//  Contact.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import Foundation

struct Contact: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String?
    
}
