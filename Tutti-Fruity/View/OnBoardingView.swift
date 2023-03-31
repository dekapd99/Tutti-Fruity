//
//  OnBoardingView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - TABVIEW
        TabView {
            ForEach(0..<5) { item in
                FruitCardComponent()
            }//: - FOREACH LOOP FOR 5 ITEMS ONLY
        }//: - TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
