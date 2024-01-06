//
//  MockRemoteRepositoryService.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation

struct MockRemotePokemonService : RemotePokemonService {
    func getPokemonDetails(getPokemonDetailsRequest: GetPokemonDetailsRequest) async throws -> GetPokemonDetailsResponse {
        return GetPokemonDetailsResponse(id: 1, name: "Name", abilities: [AbilityDTO(ability: AbilityDetailDTO(name: "Ability 1")),AbilityDTO(ability: AbilityDetailDTO(name: "Ability 1"))], sprites: SpritesDTO(other: OtherDTO(officialArtwork: OfficialArtworkDTO(frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"))))
    }
    
    func getPokemons(getPokemonsRequest: GetPokemonsRequest) async throws -> GetPokemonsResponse {
        // Create 10 mock PokemonListItemDTO objects
        var pokemonList =  [

            PokemonListItemDTO(name: "pokemon 1", url: "https://pokeapi.co/api/v2/pokemon/1"),
            PokemonListItemDTO(name: "pokemon 2", url: "https://pokeapi.co/api/v2/pokemon/2"),
            PokemonListItemDTO(name: "pokemon 3", url: "https://pokeapi.co/api/v2/pokemon/3"),
            PokemonListItemDTO(name: "pokemon 4", url: "https://pokeapi.co/api/v2/pokemon/4"),
            PokemonListItemDTO(name: "pokemon 5", url: "https://pokeapi.co/api/v2/pokemon/5"),
            PokemonListItemDTO(name: "pokemon 6", url: "https://pokeapi.co/api/v2/pokemon/6"),
            PokemonListItemDTO(name: "pokemon 7", url: "https://pokeapi.co/api/v2/pokemon/7"),
            PokemonListItemDTO(name: "pokemon 8", url: "https://pokeapi.co/api/v2/pokemon/8"),
            PokemonListItemDTO(name: "pokemon 9", url: "https://pokeapi.co/api/v2/pokemon/9"),
            PokemonListItemDTO(name: "pokemon 10", url: "https://pokeapi.co/api/v2/pokemon/10"),
            
        ]
        // Create and return a mock GetPokemonsResponse object
        return GetPokemonsResponse(results: pokemonList	)
    }
}
