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
            Button("Reset Console") {

            }
            .keyboardShortcut(KeyEquivalent("r"), modifiers: /*@START_MENU_TOKEN@*/.command/*@END_MENU_TOKEN@*/)
        }

        // This is an example of removing menu items, in this case from the help menu
        CommandGroup(replacing: CommandGroupPlacement.help) {}

        // Add the show/hide sidebar command and shortcut to the menu
        SidebarCommands()
        // Add extra text editing commands to the menu
        TextEditingCommands()
        // Add text formatting commands to the menu
        // Commented out for now, but might be useful in the future
        // TextFormattingCommands()
    }
}
