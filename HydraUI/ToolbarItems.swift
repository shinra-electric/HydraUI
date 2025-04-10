//
//  ToolbarItems.swift
//  HydraUI
//
//  Created by Xianmo on 10/04/2025.
//

import SwiftUI

struct ToolbarItems: ToolbarContent {
    @State private var isFilePickerPresented: Bool = false

    var body: some ToolbarContent {
        ToolbarItemGroup(placement: .automatic) {

            Button("Open File", systemImage: "plus.app") {
                isFilePickerPresented.toggle()
            }
            .fileImporter(isPresented: $isFilePickerPresented, allowedContentTypes: [.data], allowsMultipleSelection: false) { result in
                switch result {
                case .success(let fileurls):
                    print(fileurls.count)

                    for fileurl in fileurls {
                        print(fileurl.path)
                    }

                case .failure(let error):
                    print(error)
                }
            }

            Button("Reset", systemImage: "power") { }

            Button("Save States", systemImage: "photo.on.rectangle.angled") { }

            Button("Controller 1", systemImage: "gamecontroller") { }

            Button("Controller 2", systemImage: "gamecontroller") { }

        }
    }

}
