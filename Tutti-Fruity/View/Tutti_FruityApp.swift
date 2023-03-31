//
//  Tutti_FruityApp.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 30/03/23.
//

import SwiftUI

@main
struct Tutti_FruityApp: App {
    //MARK: - APPSTORAGE PROPERTY WRAPPER
    //isOnboarding = true means We Set the OnBoarding Screen to be visible for the very first time the user launches our apps (Tutti Fruity)
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    //MARK: - BODY CONTENT SCENE
    var body: some Scene {
        //MARK: - WINDOW GROUP
        WindowGroup {
            
            //MARK: - IF ELSE STATEMENT TO SHOW ONBOARDINGVIEW() FOR FIRST TIME USER
            if isOnboarding == true {
                OnBoardingView()
            } else {
                ContentView()
            }//: - IF ELSE STATEMENT TO SHOW ONBOARDINGVIEW() FOR FIRST TIME USER
            
        }//: - WINDOWGROUP
    }//: - BODY CONTENT
}
