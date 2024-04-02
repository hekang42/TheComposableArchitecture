//
//  AppFeatureTests.swift
//  TCASampleAppTests
//
//  Created by a11948 on 4/1/24.
//

import XCTest
import ComposableArchitecture

@MainActor
final class AppFeatureTests: XCTestCase {
    func testIncrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {state in
            state.tab1.count = 1
//            $0.tab1.count = 1
        }
    }
}
