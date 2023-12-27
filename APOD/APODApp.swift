//
//  APODApp.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

@main
struct APODApp: App {
    @AppStorage("isOnbarding") var isOnbarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnbarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
