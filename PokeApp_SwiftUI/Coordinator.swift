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
    
    
    
    init(mock: Bool){
        
        let networkClient: NetworkClient = URLSessionNetworkClient()
        let remotePokemonService: RemotePokemonService = mock ? MockRemotePokemonService(): LiveRemotePokemonService(networkClient:networkClient)
        
        pokemonRepository = PokemonRepository(remotePokemonService: remotePokemonService)
        getPokemonListUseCase = GetPokemonListUseCase(pokemonRepository: pokemonRepository)
    }
    
    
    
    // MARK: - PokemonsView
        func makePokemonsView() -> PokemonsView {
            PokemonsView(viewModel: makePokemonsViewModel())
        }

        func makePokemonsViewModel() -> PokemonsViewModel {
            PokemonsViewModel(getPokemonListUseCase: getPokemonListUseCase)
        }
    // MARK: - AboutView
        func makeAboutView() -> AboutView {
            AboutView()
        }
    
}
