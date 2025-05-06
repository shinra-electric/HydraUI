//
//  Menu Commands.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct MenuCommands: Commands {

    var body: some Commands {
        // Adds a new command to the File menu
        CommandGroup(after: .newItem) {
            Button("Add to Library") {

            }
            .keyboardShortcut(KeyEquivalent("o"), modifiers: /*@START_MENU_TOKEN@*/.command/*@END_MENU_TOKEN@*/)
        }
        
        // This removes/replaces menu items
        CommandGroup(replacing: CommandGroupPlacement.help) {}
        CommandGroup(replacing: CommandGroupPlacement.pasteboard) {}
        CommandGroup(replacing: CommandGroupPlacement.systemServices) {}
        CommandGroup(replacing: CommandGroupPlacement.undoRedo) {}

        // Add the show/hide sidebar command and shortcut to the menu
        SidebarCommands()

    }
}
