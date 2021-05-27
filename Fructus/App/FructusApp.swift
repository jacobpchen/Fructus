//
//  FructusApp.swift
//  Fructus
//
//  Created by Jacob Chen on 5/7/21.
//

import SwiftUI


@main // Serves as an entry point for the program
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
