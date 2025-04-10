//
//  SidebarView.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: SidebarSelectionState?

    var body: some View {
        List(selection: $selection) {
            ForEach(SidebarSelectionState.allCases) { selection in
                Label(selection.displayName, systemImage: selection.iconName)
                    .tag(selection)
                    .foregroundColor(.primary)
            }
        }
    }
}

#Preview {
    SidebarView(selection: .constant(.savestates))
}
