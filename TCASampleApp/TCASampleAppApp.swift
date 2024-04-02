//
//  TCASampleAppApp.swift
//  TCASampleApp
//
//  Created by a11948 on 3/28/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCASampleAppApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCASampleAppApp.store)
        }
    }
}
