//
//  GetPokemonListUseCase.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct GetPokemonListUseCase{
    private let pokemonRepository :PokemonRepository
    
    init(pokemonRepository:PokemonRepository){
        self.pokemonRepository = pokemonRepository
    }
    
    func getPokemonList(limit:Int, offset:Int) async throws -> [Pokemon]{
        var pokemonList :[Pokemon] = []
        let getPokemonResponse : GetPokemonsResponse=try await pokemonRepository.getPokemons(getPokemonsRequest:GetPokemonsRequest(limit: limit, offst: offset));
        
        
        for pokemonListItem in getPokemonResponse.results {
            let pokemonDetailsResponse: GetPokemonDetailsResponse = try await pokemonRepository.getPokemonDetails(getPokemonDetailsRequest: GetPokemonDetailsRequest(url: pokemonListItem.url))
            pokemonList.append(Pokemon(id: pokemonDetailsResponse.id, name: pokemonListItem.name, abilities: pokemonDetailsResponse.abilityNames, officialArtwork: pokemonDetailsResponse.sprites.other.officialArtwork.frontDefault))
        }
        
        
        return pokemonList
        
    }
    
}


