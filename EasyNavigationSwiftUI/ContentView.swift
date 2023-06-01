//
//  ContentView.swift
//  EasyNavigationSwiftUI
//
//  Created by Osama Usmani on 01/06/2023.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    @State private var checkTest = false
    
    
    var body: some View {
        switch navigationManager.currentScreen {
        case .home:
            HomeView(navigationManager: navigationManager)
        case .profile:
            ProfileView(navigationManager: navigationManager,  checkTest: $checkTest)
        case .profileDetails:
            ProfileDetailsView(navigationManager: navigationManager)
        case .profileDetails2:
            ProfileDetailsView2(navigationManager: navigationManager)
        }
    }
}

