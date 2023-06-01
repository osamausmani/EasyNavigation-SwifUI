//
//  ScreenViews.swift
//  EasyNavigationSwiftUI
//
//  Created by Osama Usmani on 01/06/2023.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @ObservedObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Text("Home Screen")
            Button("Go to Profile") {
                btnAction()
            }
        }
    }
    
    
    func btnAction(){
        navigationManager.navigateTo(screen: .profile)
    }
    
}

struct ProfileView: View {
    @ObservedObject var navigationManager: NavigationManager
    @Binding var checkTest: Bool
    
    var body: some View {
        VStack {
            Text("Profile Screen")
            Button("Go To Details") {
                checkTest = true
                navigationManager.navigateTo(screen: .profileDetails)
            }
            Button("Go back") {
                navigationManager.goBack()
            }
        }
    }
}


struct ProfileDetailsView: View {
    @ObservedObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Text("Profile Details Screen")
            Button("Go To Details2") {
                navigationManager.navigateTo(screen: .profileDetails2)
            }
            Button("Go back") {
                navigationManager.goBack()
            }
        }
    }
}

struct ProfileDetailsView2: View {
    @ObservedObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Text("Profile Details Screen2")
            Button("Go back") {
                navigationManager.goBack()
            }
        }
    }
}
