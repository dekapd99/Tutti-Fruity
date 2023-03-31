//
//  FruitRowComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct FruitRowComponent: View {
    //MARK: - PROPERTY
    
    var fruit: FruitModel //Data Integration with FruitModel
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - HSTACK FOR IMAGE, TITLE, & HEADLINE (CAPTION)
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            //MARK: - VSTACK FOR TITLE & HEADLINE (CAPTION)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }//: - VSTACK FOR TITLE & HEADLINE (CAPTION)
        }//: - HSTACK FOR IMAGE, TITLE, & HEADLINE (CAPTION)
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct FruitRowComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowComponent(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
