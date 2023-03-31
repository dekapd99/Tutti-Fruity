//
//  FruitModel.swift
//  Tutti-Fruity
//
//  Created by Deka Primatio on 31/03/23.
//

import SwiftUI

//MARK: - Fruit Local Data Type Declaration
struct FruitModel: Identifiable {
    var id = UUID() //Universal Unique Identifier
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color] //Set of Gradient Color Array String
    var description: String
    var nutrition: [String] //Set of Nutrional Value of Each Fruit (Fat, Sugar, Protein, Minerals)
}
