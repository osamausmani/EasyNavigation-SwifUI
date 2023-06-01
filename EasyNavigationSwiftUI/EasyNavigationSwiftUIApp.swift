//
//  EasyNavigationSwiftUIApp.swift
//  EasyNavigationSwiftUI
//
//  Created by Osama Usmani on 01/06/2023.
//

import SwiftUI

@main
struct EasyNavigationSwiftUIApp: App {
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView() .environmentObject(navigationManager)
        }
    }
}
