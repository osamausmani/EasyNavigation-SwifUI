//
//  NavigationManager.swift
//  EasyNavigationSwiftUI
//
//  Created by Osama Usmani on 01/06/2023.
//


import SwiftUI

class NavigationManager: ObservableObject {
    @Published var currentScreen: Screen = .home
    private var screenStack: [Screen] = []
    
    enum Screen {
        case home
        case profile
        case profileDetails
        case profileDetails2
        
        // Add more screens as needed
    }
    
    func navigateTo(screen: Screen) {
        screenStack.append(currentScreen)
        currentScreen = screen
    }
    
    
    func goBack(_ count: Int? = nil) {
        let popCount = count ?? 1
        
        guard popCount > 0 && screenStack.count >= popCount else { return }
        
        // Pop the specified number of screens from the stack
        let index = screenStack.count - popCount
        guard let previousScreen = screenStack[safe: index] else { return }
        screenStack.removeLast(screenStack.count - index)
        currentScreen = previousScreen
    }
    
    
    
    
}

extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
