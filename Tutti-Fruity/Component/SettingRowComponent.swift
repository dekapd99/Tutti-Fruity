//
//  SettingRowComponent.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 01/04/23.
//

import SwiftUI

struct SettingRowComponent: View {
    //MARK: - PROPERTY
    var name: String
    
    // Optional Property for Conditional Statement (IF ELSE)
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - HSTACK FOR NAME & CONTENT
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                
                /**
                 * IF
                 * Check if the var "content" have any value,
                 * If YES, then display the content string value
                 */
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    /**
                     * ELSE IF
                     * Check both var "linkLabel" & "linkDestination" have any value
                     * If YES, then display the "linkLabel" & "linkDestination" string value
                     * with the SwiftUI Link() view
                     */
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }//: - IF ELSE STATEMENT FOR OPTIONAL PROPERTY
                
            }//: - HSTACK FOR NAME & IF ELSE STATEMENT FOR OPTIONAL PROPERTY
        }//: - VSTACK MAIN WRAPPER
    }//: - BODY CONTENT
}

struct SettingRowComponent_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowComponent(name: "Developer", content: "Deka Primatio Deandra")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingRowComponent(name: "Github", linkLabel: "dekapd99", linkDestination: "github.com/dekapd99")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
