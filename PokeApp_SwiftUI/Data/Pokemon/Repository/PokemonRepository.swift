//
//  PokemonRepository.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct PokemonRepository{
    
    private let remotePokemonService : RemotePokemonService
    
    init(remotePokemonService : RemotePokemonService){
        self.remotePokemonService = remotePokemonService
    }

    func getPokemons(getPokemonsRequest: GetPokemonsRequest) async throws -> GetPokemonsResponse {
        return try await remotePokemonService.getPokemons(getPokemonsRequest: getPokemonsRequest)
    }
    
    func getPokemonDetails(getPokemonDetailsRequest: GetPokemonDetailsRequest) async throws -> GetPokemonDetailsResponse{
        return try await remotePokemonService.getPokemonDetails(getPokemonDetailsRequest: getPokemonDetailsRequest)
    }
}
