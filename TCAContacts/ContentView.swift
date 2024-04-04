//
//  ContentView.swift
//  TCAContacts
//
//  Created by a11948 on 4/2/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    static let store = Store(initialState: ContactsFeature.State(
        contacts: [
              Contact(id: UUID(), name: "Blob"),
              Contact(id: UUID(), name: "Blob Jr"),
              Contact(id: UUID(), name: "Blob Sr"),
            ]
          )) {
        ContactsFeature()
    }
    var body: some View {
        ContactsView(store: ContentView.store)
    }
}

#Preview {
    ContentView()
}
