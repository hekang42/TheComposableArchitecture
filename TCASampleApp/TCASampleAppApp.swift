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
    var body: some Scene {
        WindowGroup {
            CounterView(
                store: Store(initialState: CounterFeature.State(), reducer: {
                    CounterFeature() }
                            ))
        }
    }
}
