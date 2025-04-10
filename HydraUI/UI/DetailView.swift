//
//  DetailView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct DetailView: View {
    @Binding var selection: SidebarSelectionState?

    var body: some View {
        if let state = selection {
            switch state {
            case .nowPlaying:
                NowPlayingView()
            case .gamelist:
                GameListView()
            case .savestates:
                SaveStatesView()
            }
        }
    }
}

#Preview {
    DetailView(selection: .constant(.gamelist))
}
