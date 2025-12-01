//
//  SettingsView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//
import SwiftUI

struct SettingsView: View {
    
    private enum Tabs: Hashable {
        case general, cpu, graphics, audio, user, system, debug
    }
    
    @State private var selection: Tabs = .general

    var body: some View {
        TabView(selection: $selection) {
            Tab("General", systemImage: "gear", value: .general) {
                GeneralSettingsView()
            }
                        
            Tab("CPU", systemImage: "cpu", value: .cpu) {
                CpuSettingsView()
            }
                        
            Tab("Graphics", systemImage: "star", value: .graphics) {
                GraphicsSettingsView()
            }
                        
            Tab("Audio", systemImage: "speaker.wave.2", value: .audio) {
                AudioSettingsView()
            }
                        
            Tab("User", systemImage: "person", value: .user) {
                UserSettingsView()
            }
                        
            Tab("System", systemImage: "desktopcomputer", value: .system) {
                SystemSettingsView()
            }
                        
            Tab("Debug", systemImage: "memorychip", value: .debug) {
                DebugSettingsView()
            }
        }
        .scenePadding()
    }
}

#Preview {
    SettingsView()
}
