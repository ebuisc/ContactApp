//
//  AddContactView.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import SwiftUI

struct AddContactView: View {
    @StateObject var viewModel = AddContactViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                        TextField("İsim giriniz...", text: $viewModel.name)
                        .autocorrectionDisabled(true)
                        TextField("Soyisim giriniz...", text: $viewModel.surname)
                        .autocorrectionDisabled(true)
                        TextField("Telefon numarası giriniz...", text: $viewModel.phoneNumber)
                        .keyboardType(.numberPad)
                        TextField("E-Mail giriniz...", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled(true)
                            .autocapitalization(.none)
                    Button {
                        if viewModel.name != "" {
                            Task {
                                try await viewModel.createContact()
                                viewModel.name = ""
                                viewModel.email = ""
                                viewModel.surname = ""
                                viewModel.phoneNumber = ""
                                
                            }
                        }
                        
                    } label: {
                        Text("Ekle")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }

                }
            }
                .navigationTitle("Yeni kişi ekle")
        }
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
