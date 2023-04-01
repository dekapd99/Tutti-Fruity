//
//  ContentView.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 30/03/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    
    var fruits: [FruitModel] = fruitsData //Fetching Data from Local FruitData file with shape of FruitModel Array
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - NAVIGATION FOR LIST & FOREACH
        NavigationView {
            //MARK: - LISTING ALL DATA FROM FruitRowComponent()
            List {
                
                //Rendering All Data from Local FruitData files with shape of FruitModel Array
                //SHUFFLED RANDOM DATA
                ForEach(fruits.shuffled()) { item in
                    //MARK: - NAVIGATIONLINK FOREACH ITEM ON THE LIST
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowComponent(fruit: item)
                            .padding(.vertical, 4)
                    }//: - NAVIGATIONLINK FOREACH ITEM ON THE LIST
                }//: - FOREACH LOOP FOR RENDERING ALL ITEMS AVAILABLE from Local FruitData
                
            }//: - LIST ALL DATA FROM FruitRowComponent()
            .listStyle(.plain)
            .navigationTitle("Fruits")
        }//: - NAVIGATIONVIEW FOR LIST & FOREACH
        
    }//: - BODY CONTENT
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //Passing fruitsData from Local FruitData file
        ContentView(fruits: fruitsData)
    }
}
