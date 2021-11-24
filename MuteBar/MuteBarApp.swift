//
//  MuteBarApp.swift
//  MuteBar
//
//  Created by azu on 2021/11/24.
//

import SwiftUI

@main
struct MuteBarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: 10)
                .onReceive(NotificationCenter.default.publisher(for: NSApplication.willUpdateNotification), perform: { _ in
                    hideMiniButton()
                })
         }.windowStyle(.hiddenTitleBar)
    }
    
    
    func hideMiniButton() {
        for window in NSApplication.shared.windows {
            window.standardWindowButton(NSWindow.ButtonType.closeButton)!.isHidden = true
            window.standardWindowButton(NSWindow.ButtonType.miniaturizeButton)!.isHidden = true
            window.standardWindowButton(NSWindow.ButtonType.zoomButton)!.isHidden = true
            window.titlebarAppearsTransparent = false
            window.titleVisibility = .hidden
            window.isOpaque = false
            window.level = .floating
        }
    }
}
