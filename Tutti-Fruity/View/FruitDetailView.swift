//
//  FruitDetailView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTY
    
    var fruit: FruitModel //Data Integration with FruitModel
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - NAVIGATIONVIEW
        NavigationView {
            //MARK: - SCROLLVIEW
            ScrollView(.vertical, showsIndicators: false) {
                
                //MARK: - VSTACK FOR HEADER
                VStack(alignment: .center, spacing: 20) {
                    //HEADER
                    FruitHeaderComponent(fruit: fruit)
                    
                    //MARK: - VSTACK FOR TITLE, HEADLINE, NUTRIENTS, DESCRIPTION & LINK
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsComponent(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn More About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //WIKIPEDIA LINK
                        SourceLinkComponent()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//: - VSTACK FOR TITLE, HEADLINE, NUTRIENTS, DESCRIPTION & LINK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//: - VSTACK FOR HEADER
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: - SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: - NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle()) //For iPad View
        
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
