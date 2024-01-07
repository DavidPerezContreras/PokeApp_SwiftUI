//
//  PokemonsViewModel.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation

class PokemonsViewModel: ObservableObject {
    private let getPokemonListUseCase: GetPokemonListUseCase
    @Published var pokemons: [Pokemon] = []
    @Published var showErrorMessage = false
    
    init(getPokemonListUseCase: GetPokemonListUseCase) {
        self.getPokemonListUseCase = getPokemonListUseCase
    }
    
    @MainActor
    func getPokemons(limit:Int, offset:Int) async {
        do {
            pokemons += try await getPokemonListUseCase.getPokemonList(limit: limit, offset: offset)
        } catch {
            showErrorMessage = true
        }
    }
}
