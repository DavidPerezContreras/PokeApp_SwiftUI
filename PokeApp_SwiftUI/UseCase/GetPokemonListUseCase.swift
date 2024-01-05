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
        let pokemonList :[Pokemon] = []
        let getPokemonResponse : GetPokemonsResponse=try await pokemonRepository.getPokemons(getPokemonsRequest:GetPokemonsRequest(limit: limit, offst: limit));
        
        
        
        
        return pokemonList
        
    }
    
}
