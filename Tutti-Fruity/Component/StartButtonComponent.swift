//
//  StartButtonComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct StartButtonComponent: View {
    //MARK: - APPSTORAGE PROPERTIES
    //Integrate AppStorage Properties from Tutti_FruityApp
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY CONTENT
    var body: some View {
        //BUTTON: START COMPONENT
        Button(action: {
            /**
             * If the Start Button Clicked
             * Change the AppStorage (isOnboarding) Value to FALSE
             * So The OnBoardingView is NO LONGER VISIBLE to the User
             */
            isOnboarding = false
        }) {
            //HSTACK TEXT BUTTON
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HSTACK TEXT BUTTON
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )//: Background with Capsule Stroke Border
        }//: - BUTTON START COMPONENT
        .accentColor(Color.white)
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct StartButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonComponent()
            .previewLayout(.sizeThatFits)
    }
}
