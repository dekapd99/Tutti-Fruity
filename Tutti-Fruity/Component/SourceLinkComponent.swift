//
//  SourceLinkComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

struct SourceLinkComponent: View {
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - GROUPBOX
        GroupBox() {
            //MARK: - HSTACK TEXT, LINK, IMAGE
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//: - HSTACK TEXT, LINK, IMAGE
            .font(.footnote)
        }//: - GROUPBOX
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct SourceLinkComponent_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkComponent()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
