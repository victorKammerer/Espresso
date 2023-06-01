//
//  AppDelegate.swift
//  Espresso
//
//  Created by vko on 31/05/23.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    static var popover = NSPopover() // maybe add a static later
    var statusBar: StatusBarController?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        Self.popover.contentViewController = NSHostingController(rootView: PopoverView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext))
        Self.popover.behavior = .transient // maybe chage it later to semitransient
        configurePopover()
        statusBar = StatusBarController(Self.popover)
    }
    
    
    
    private func configurePopover() {
        Self.popover.contentViewController = NSHostingController(rootView: PopoverView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext))
        Self.popover.behavior = .transient
        
        Self.popover.appearance = NSAppearance(named: NSAppearance.Name.vibrantLight)
        
        
        // define tamanho da popover
        let popoverSize = CGSize(width: 426, height: 514) // Defina o tamanho desejado aqui
        Self.popover.setContentSize(popoverSize)

    }
}

