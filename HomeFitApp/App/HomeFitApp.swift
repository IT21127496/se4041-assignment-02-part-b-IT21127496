//
//  HomeFitAppApp.swift
//  HomeFitApp
//
//  Created by Devthini Jayawardana on 2024-11-28.
//

import SwiftUI
import Firebase

@main
struct HomeFitApp: App {
    init() {
        // Firebase configuration
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
