//
//  ContactDetailView.swift
//  TCAContacts
//
//  Created by a11948 on 4/4/24.
//

import SwiftUI
import ComposableArchitecture

struct ContactDetailView: View {
    let store: StoreOf<ContactDetailFeature>
    
    var body: some View {
        Form {
            
        }
        .navigationTitle((Text(store.contact.name)))
    }
}

#Preview {
  NavigationStack {
    ContactDetailView(
      store: Store(
        initialState: ContactDetailFeature.State(
          contact: Contact(id: UUID(), name: "Blob")
        )
      ) {
        ContactDetailFeature()
      }
    )
  }
}
