//
//  ContactTabView.swift
//  ContactApp
//
//  Created by Ebubekir Talha İşçimen on 25.09.2023.
//

import SwiftUI

struct ContactTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            ContactView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            AddContactView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
        }
        .tint(.black)
    }
}

struct ContactTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContactTabView()
    }
}
