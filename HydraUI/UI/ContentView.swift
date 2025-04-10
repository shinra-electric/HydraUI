//
//  ContentView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: SidebarSelectionState? = .gamelist

    var body: some View {
        NavigationSplitView(sidebar: {
            SidebarView(selection: $selection)
        }, detail: {
            DetailView(selection: $selection)
        })
        .toolbar {
            ToolbarItems()
        }
    }
}

#Preview {
    ContentView()
}
