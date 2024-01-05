//
//  Coordinator.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

class Coordinator :ObservableObject{
    
    
    private let pokemonRepository : PokemonRepository;
    private let getPokemonListUseCase : GetPokemonListUseCase;
    
    
    
    init(){
        
        let networkClient: NetworkClient = URLSessionNetworkClient()
        let remotePokemonService: RemotePokemonService = LiveRemotePokemonService(networkClient:networkClient)
        
        pokemonRepository = PokemonRepository(remotePokemonService: remotePokemonService)
        getPokemonListUseCase = GetPokemonListUseCase(pokemonRepository: pokemonRepository)
    }
}
