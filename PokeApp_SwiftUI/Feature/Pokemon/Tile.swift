//
//  Tile.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/7/24.
//

import Foundation
import SwiftUI


struct Tile : View{
    
    var pokemon : Pokemon
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
    
    var body: some View{
        DisclosureGroup {
            ScrollView{
                LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                    ForEach(pokemon.abilities, id: \.self) { ability in
                        AbilityCardView(abilityName: ability)
                                }
                            }
                            .padding()
                        
                    }
            }label: {
                HStack {
                    AsyncImage(url: URL(string: pokemon.officialArtwork)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }.frame(width: 50, height: 50)
                    Text(pokemon.name)
                }
            }
            

    }
}
