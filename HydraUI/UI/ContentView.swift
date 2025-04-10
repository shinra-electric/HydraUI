//
//  ContentView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: SidebarSelectionState? = .gamelist
//    @State var searchText = ""

    var body: some View {
        NavigationSplitView(sidebar: {
            SidebarView(selection: $selection)
        }, detail: {
            DetailView(selection: $selection)
        })
//        .searchable(text: $searchText, placement: .sidebar, prompt: Text("Search"))
        .toolbar {
            ToolbarItems()
        }
    }
}

#Preview {
    ContentView()
}
