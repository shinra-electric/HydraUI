//
//  GeneralSettingsView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//
import SwiftUI

struct GeneralSettingsView: View {
    @AppStorage("showPreview") private var showPreview = true
    @AppStorage("gameDirectories") private var gameDirectories: [URL] = []
    @AppStorage("rootPaths") private var rootPaths: [URL] = []
    
    var body: some View {
        Form {
            Toggle("Show Previews", isOn: $showPreview)
            Text("Game Directories")
            
            
            Text("Homebrew Root Paths")
            
        }
    }
}


#Preview {
    SettingsView()
}
