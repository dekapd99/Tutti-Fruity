//
//  OnBoardingView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    
    var fruits: [FruitModel] = fruitsData //Fetching Data from Local FruitData file with shape of FruitModel Array
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - TABVIEW FOR INITIALIZE FRUIT DATA
        TabView {
            
            //Rendering 6 First Data from Local FruitData files with shape of FruitModel Array
            ForEach(fruits[0...5]) { item in
                FruitCardComponent(fruit: item)
            }//: - FOREACH LOOP FOR 5 ITEMS ONLY
            
        }//: - TABVIEW FOR INITIALIZE FRUIT DATA
        .tabViewStyle(PageTabViewStyle())
        
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        //Passing fruitsData from Local FruitData file
        OnBoardingView(fruits: fruitsData)
    }
}
