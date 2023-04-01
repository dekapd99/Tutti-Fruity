//
//  FruitNutrientsComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 01/04/23.
//

import SwiftUI

struct FruitNutrientsComponent: View {
    //MARK: - PROPERTY
    var fruit: FruitModel //Data Integration with FruitModel
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - GROUPBOX
        GroupBox() {
            
            //MARK: - DISCLOSUREGROUP FOR NUTRIONAL VALUE
            DisclosureGroup("Nutrional value per 100 gram") {
                //Rendering All Data Static Data from property variable above "nutrients"
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2) //DIVIDER FOR EACH CONTENT
                    
                    //MARK: - HSTACK FOR NUTRIENT TEXT INFORMATION
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: - HSTACK FOR NUTRIENT TEXT INFORMATION
                }//: - ForEach
            }//: - DISCLOSUREGROUP FOR NUTRIONAL VALUE
            
        }//: - GROUPBOX
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct FruitNutrientsComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsComponent(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
