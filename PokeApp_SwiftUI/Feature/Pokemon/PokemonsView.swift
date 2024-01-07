//
//  PokemonsView.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation
import SwiftUI

struct PokemonsView : View {
    let limit=50;
    init(viewModel: PokemonsViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    @StateObject private var viewModel: PokemonsViewModel
    @EnvironmentObject var coordinator: Coordinator
    
    var body : some View {
        NavigationView{
            VStack{
                Rectangle().fill().frame(height: 0)
                ScrollView{
                    LazyVStack {
                        ForEach(Array(_viewModel.wrappedValue.pokemons.enumerated()), id: \.element.id) { index, item in
                            Tile(pokemon: item)
                                .onAppear{
                                    
                                    Task{
                                        //try await Task.sleep(nanoseconds: 4_000_000_000)
                                        if index == viewModel.pokemons.count - 1 {
                                            await viewModel.getPokemons(limit: limit, offset: viewModel.pokemons.count)
                                        }
                                    }
                                    
                                }
                        }
                    }.task {
                        if(viewModel.pokemons.isEmpty){
                            await viewModel.getPokemons(limit: limit, offset: 0)
                        }
                        
                    }.frame (minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                }
            }
            
        }
    }
}


struct PokemonsView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinator = Coordinator(mock: true)
        ContentView().environmentObject(coordinator)
    }
}
