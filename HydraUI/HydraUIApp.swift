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
#if os(macOS)
        Window("Hydra - Build XXXXX - Branch SwiftUI - M1 Pro", id: "main") {
            ContentView()
                .frame(minWidth: 900, minHeight: 500)
        }
        .windowResizability(.contentSize)
        .commands {
            MenuCommands()
        }
        
        Settings {
            SettingsView()
                .frame(width: 900, height: 400)
        }
        
#else
        WindowGroup("Hydra") {
            ContentView()
                .frame(minWidth: 900, minHeight: 500)
        }
        .windowResizability(.contentSize)
        .commands {
            MenuCommands()
        }
#endif
        
        
    }
}
