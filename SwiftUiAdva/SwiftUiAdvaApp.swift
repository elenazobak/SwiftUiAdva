//
//  SwiftUiAdvaApp.swift
//  SwiftUiAdva
//
//  Created by Elena Zobak on 7/11/23.
//

import SwiftUI

@main
struct SwiftUiAdvaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
