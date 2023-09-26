//
//  ContentView.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import SwiftUI

struct ContactView: View {
    @StateObject private var viewModel = ContactViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.contacts) { contact in
                    ContactCell(contact: contact)
                }
            }
            .navigationTitle("Rehber")
        }
        .onAppear() {
            Task {
                try await viewModel.fetchContacts()
            }
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
