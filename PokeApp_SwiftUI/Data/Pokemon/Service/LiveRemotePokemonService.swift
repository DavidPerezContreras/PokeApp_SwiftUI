//
//  LiveRemotePokemonService.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct LiveRemotePokemonService : RemotePokemonService{
    private let networkClient: NetworkClient
    
    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
    }
    
    func getPokemons(getPokemonsRequest: GetPokemonsRequest) async throws -> GetPokemonsResponse {
        return GetPokemonsResponse(
            URLs: [
                "https://pokeapi.co/api/v2/pokemon/1/",
                "https://pokeapi.co/api/v2/pokemon/2/",
                "https://pokeapi.co/api/v2/pokemon/3/",
                "https://pokeapi.co/api/v2/pokemon/4/",
                "https://pokeapi.co/api/v2/pokemon/5/",
                "https://pokeapi.co/api/v2/pokemon/6/",
                "https://pokeapi.co/api/v2/pokemon/7/",
                "https://pokeapi.co/api/v2/pokemon/8/",
                "https://pokeapi.co/api/v2/pokemon/9/",
                "https://pokeapi.co/api/v2/pokemon/10/",
            ]
        )
    }
    
    
}
