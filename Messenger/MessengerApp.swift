//
//  MessengerApp.swift
//  Messenger
//
//  Created by Akhil1 Singh on 31/01/23.
//

import SwiftUI
import Firebase

@main
struct MessengerApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
