//
//  GetPokemonResponse.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct GetPokemonsResponse: Decodable {
    //let count: Int
    //let next: String
    //let previous: String?
    let results: [PokemonListItemDTO]
}

struct PokemonListItemDTO: Decodable {
    let name: String
    let url: String
}




struct AbilityDetailDTO: Decodable {
    let name: String
}

struct AbilityDTO: Decodable {
    let ability: AbilityDetailDTO
}


struct OfficialArtworkDTO: Decodable{
    let frontDefault:String
    
    enum CodingKeys: String, CodingKey{
        case frontDefault = "front_default"
    }
}

struct OtherDTO: Decodable{
    let officialArtwork: OfficialArtworkDTO
    
    enum CodingKeys: String, CodingKey{
        case officialArtwork = "official-artwork"
    }
}

struct SpritesDTO: Decodable {
    let other: OtherDTO
}

struct GetPokemonDetailsResponse: Decodable {
    let id: Int
    let name: String
    let abilities: [AbilityDTO]
    let sprites: SpritesDTO
    
    var abilityNames: [String] {
        return abilities.map { $0.ability.name }
    }
}





