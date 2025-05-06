//
//  SettingsView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//
import SwiftUI

struct SettingsView: View {

    var body: some View {
        TabView {
            Tab("General", systemImage: "gear") {
                GeneralSettingsView()
                    .navigationTitle("")
            }
            Tab("CPU", systemImage: "memorychip") {
                CPUSettingsView()
                    .navigationTitle("")
            }
        }
        .scenePadding()
    }
}

#Preview {
    SettingsView()
}
