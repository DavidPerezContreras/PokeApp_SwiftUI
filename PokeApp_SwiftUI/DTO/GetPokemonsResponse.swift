//
//  GetPokemonResponse.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct GetPokemonsResponse : Decodable{
    var pokemonList: PokemonListDTO
}




// Define the PokemonList struct
struct PokemonListDTO: Decodable {
    //let count: Int
    //let next: String
    //let previous: String?
    let results: [PokemonListItemDTO]
}


// Define the Pokemon struct
struct PokemonListItemDTO: Decodable {
    let name: String
    let url: String
}
