//
//  GeneralSettingsView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//
import SwiftUI

struct GeneralSettingsView: View {
    @State private var gamePaths: [String] = []
    @State private var patchPaths: [String] = []

    var body: some View {
        VStack {
            Text("Game paths")
            TextField("Enter game path", text: .constant(""))
            Text("Patch paths")
            TextField("Enter patch path", text: .constant(""))
        }
        .onAppear {
       
        }
    }
}



#Preview {
    SettingsView()
}
