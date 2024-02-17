//
//  CardStackView.swift
//  Cooker
//
//  Created by Yongye Tan on 2/17/24.
//

import SwiftUI

struct CardStackView: View {
    
    @State private var recipes: [Recipe] = [
        Recipe(id: 1, imageName: "food", recipeName: "1", cookTime: 30, cuisine: "USA", dietaryPreferences: ["no milk"], ingredients: ["apple"], instructions: ["cook", "clean", "eat"]),
        Recipe(id: 2, imageName: "food", recipeName: "1", cookTime: 30, cuisine: "USA", dietaryPreferences: ["no milk"], ingredients: ["apple"], instructions: ["cook", "clean", "eat"])
    ]
    
    var body: some View {
        VStack {
            
            GeometryReader { geometry in
                
                
                VStack {
                    
                    ZStack {
                        
                        ForEach(recipes, id: \.self) { recipe in
                            CardView()
                                .frame(width: getCardWidth(geometry, id: recipe.id), height: 400)
                            
                        }
                        
                    }
                    
//                    Spacer()
                }
            }
            
        }
        .padding()
    }
    
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(10 - 1 - id) * 10
        return geometry.size.width - offset
    }
    
}


#Preview {
    CardStackView()
}