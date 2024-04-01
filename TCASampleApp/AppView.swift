//
//  AppView.swift
//  TCASampleApp
//
//  Created by a11948 on 4/1/24.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<CounterFeature>
    
    var body: some View {
        TabView {
            CounterView(store: store)
                .tabItem {
                    Text("Counter 1")
                }
            
            CounterView(store: store)
                .tabItem {
                    Text("Counter 2")
                }
        }
    }
}
