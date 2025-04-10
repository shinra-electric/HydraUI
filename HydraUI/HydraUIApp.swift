//
//  HydraUIApp.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

@main
struct HydraUIApp: App {
    var body: some Scene {
        Window("Hydra", id: "main") {
            ContentView()
                .frame(minWidth: 900, minHeight: 500)
        }
        .windowResizability(.contentSize)
        .commands {
            MenuCommands()
        }

        Settings {
            SettingsView()
        }
    }
}
