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
        var pokemonList :[Pokemon] = [Pokemon(id: 1, name: "Pikachu", abilities:["Ability 1"], officialArtwork: "artwork")]
        let getPokemonResponse : GetPokemonsResponse=try await pokemonRepository.getPokemons(getPokemonsRequest:GetPokemonsRequest(limit: limit, offst: limit));
        
        
        for pokemonListItem in getPokemonResponse.results {
            let pokemonDetailsResponse: GetPokemonDetailsResponse = await pokemonRepository.getPokemonn
            pokemonList.append(Pokemon(id: 1, name: pokemonListItem.name, abilities: ["hola"], officialArtwork: "artwork"))
        }
        
        
        return pokemonList
        
    }
    
}
