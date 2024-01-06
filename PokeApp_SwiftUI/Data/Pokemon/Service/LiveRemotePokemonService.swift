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
        let response: GetPokemonsResponse = try await networkClient.get(url: "https://pokeapi.co/api/v2/pokemon?offset=\(getPokemonsRequest.offst)&limit=\(getPokemonsRequest.limit)")
                return response
    }
    
    
}
