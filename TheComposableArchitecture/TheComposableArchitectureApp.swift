//
//  TheComposableArchitectureApp.swift
//  TheComposableArchitecture
//
//  Created by 강희영 on 2022/01/04.
//

import SwiftUI

@main
struct TheComposableArchitectureApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
