//
//  PokemonService.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

protocol RemotePokemonService{
    func getPokemons(getPokemonsRequest: GetPokemonsRequest) async throws -> GetPokemonsResponse
}
