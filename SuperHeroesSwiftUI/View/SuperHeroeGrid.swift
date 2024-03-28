//
//  SuperHeroeDetail.swift
//  SuperHeroesSwiftUI
//
//  Created by Miguel on 28/3/24.
//

import SwiftUI

struct SuperHeroeGrid: View {
    let superheroes = getSuperHeroes()

    let adaptative: [GridItem] = [GridItem(.adaptive(minimum: 115))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: adaptative, spacing: 10) {
                    ForEach(superheroes){ superH in
                        
                        NavigationLink(value: superH) {
                            Text(superH.nombreReal)
                        }
                        .buttonStyle(.plain)
                        
                    }
                }
            }
        }
        
    }
}

#Preview {
    SuperHeroeGrid()
}
