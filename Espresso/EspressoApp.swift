//
//  EspressoApp.swift
//  Espresso
//
//  Created by vko on 31/05/23.
//

import SwiftUI

@main
struct Espresso: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
