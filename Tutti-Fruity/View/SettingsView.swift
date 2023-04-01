//
//  SettingsView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 01/04/23.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTY
    //Property Storing whether the SettingsView currently presented on the screen and the method to let us Dismissed the View immediatley
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - NAVIGATIONVIEW WRAPPER FOR SCROLLVIEW CONTENT
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - GROUPBOX SECTION FOR LABEL, LOGO & APPS DESCRIPTION
                    GroupBox(
                        //MARK: - REUSABLE LABEL COMPONENT
                        label:
                            SettingLabelComponent(labelText: "Tutti Fruity", labelIcon: "info.circle")
                    ) { //: - REUSABLE LABEL COMPONENT
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }//: - GROUPBOX SECTION FOR LABEL, LOGO & APPS DESCRIPTION
                    
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        //MARK: - REUSABLE LABEL COMPONENT
                        label:
                            SettingLabelComponent(labelText: "Application", labelIcon: "apps.iphone")
                    ) { //: - REUSABLE LABEL COMPONENT
                        
                        //MARK: - REUSABLE ROW COMPONENT
                        SettingRowComponent(name: "Developer", content: "Deka Primatio Deandra")
                        SettingRowComponent(name: "Compability", content: "iOS 16")
                        SettingRowComponent(name: "Github", linkLabel: "dekapd99", linkDestination: "github.com/dekapd99")
                        SettingRowComponent(name: "Instagram", linkLabel: "deka_pd", linkDestination: "instagram.com/deka_pd")
                        SettingRowComponent(name: "LinkedIn", linkLabel: "Deka Primatio Deandra", linkDestination: "linkedin.com/in/deka-primatio-deandra-5487061aa/")
                        SettingRowComponent(name: "SwiftUI", content: "4.0")
                        SettingRowComponent(name: "Version", content: "1.1.0")
                    }//: - GROUPBOX SECTION FOR APPLICATION INFO
                    
                }//: - VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }//: - BUTTON FOR DISMISSING THE CONTENT
                    ) //: - NAVIGATIONBARITEMS
                .padding()
                
            }//: - SCROLLVIEW FOR SETTINGS CONTENT
        }//: - NAVIGATIONVIEW WRAPPER FOR SCROLLVIEW CONTENT
        
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
