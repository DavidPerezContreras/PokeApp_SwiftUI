//
//  PokemonsView.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation
import SwiftUI

struct PokemonsView : View {
    
    init(viewModel: PokemonsViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    @StateObject private var viewModel: PokemonsViewModel
    @EnvironmentObject var coordinator: Coordinator
    
    var body : some View {
        List {
            ForEach(_viewModel.wrappedValue.pokemons, id: \.id) { item in
                Text(item.name)
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
