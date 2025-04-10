//
//  SidebarSelectionState.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import Foundation

enum SidebarSelectionState: Identifiable, CaseIterable, Hashable {

    case nowPlaying
    case gamelist
    case savestates


    var id: String {
        switch self {
        case .nowPlaying:
            "nowPlaying"
        case .gamelist:
            "gamelist"
        case .savestates:
            "savestates"
        }
    }

    var displayName: String {
        switch self {
        case .nowPlaying:
            "Now Playing"
        case .gamelist:
            "Game List"
        case .savestates:
            "Save States"
        }
    }

    var iconName: String {
        switch self {
        case .nowPlaying:
            "play"
        case .gamelist:
            "memorychip"
        case .savestates:
            "photo.on.rectangle.angled"
        }
    }
}
