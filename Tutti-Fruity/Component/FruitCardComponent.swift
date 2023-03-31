//
//  FruitCardView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct FruitCardComponent: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - ZSTACK
        ZStack {
            //MARK: - VSTACK CARD COMPONENT
            VStack(spacing: 20) {
                //FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    // Ternary Operator for Image Animation to Scale from 0.5 to 1.0 When isAnimating changing value to = True
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //FRUIT: TITLE
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //FRUIT: HEADLINE
                Text("Blueberries are sour & fresh, nutritious and wildly popular berries among the others around the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START BUTTON COMPONENT CALLER
                StartButtonComponent()
                
            }//: - VSTACK CARD COMPONENT
        }//: - ZSTACK
        .onAppear{
            // When the Card is Appear change the value isAnimation to True & do EaseOut Animation for 0.5 Sec
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }//: - OnAppear withAnimation easeOut
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(40)
        .padding(.horizontal, 20)
    }//: - BODY CONTENT
}

//MARK: PREVIEW
struct FruitCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardComponent()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
