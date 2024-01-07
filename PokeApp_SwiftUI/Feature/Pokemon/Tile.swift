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
        NavigationLink {
            ScrollView{
                NavigationView{
                    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                        ForEach(pokemon.abilities, id: \.self) { ability in
                            AbilityCardView(abilityName: ability)
                        }
                    }
                    .padding()
                    
                }
            }.navigationTitle("abilityView.title".localized())
            
        }label: {
            HStack (alignment: .center, content: {
                AsyncImage(url: URL(string: pokemon.officialArtwork)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }.frame(width: 80, height: 80)
                Text(pokemon.name.capitalizingFirstLetter())
                Spacer()
            }
            )
        }
        
        
    }
}
