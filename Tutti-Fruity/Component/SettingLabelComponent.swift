//
//  LabelComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 01/04/23.
//

import SwiftUI

struct SettingLabelComponent: View {
    //MARK: - PROPERTY
    var labelText: String
    var labelIcon: String
    
    //MARK: - BODY CONTENT
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelIcon)
        }//: - HSTACK
    }//: - BODY CONTENT
}

struct SettingLabelComponent_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelComponent(labelText: "Tutti Fruity", labelIcon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
