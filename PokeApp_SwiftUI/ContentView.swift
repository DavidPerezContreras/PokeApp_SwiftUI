//
//  ContentView.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
            TabView {
                coordinator.makePokemonsView()
                    .tabItem {
                        Label("contentView.pokemonsTab".localized(), systemImage: "sparkles.tv")
                    }
                
                coordinator.makeAboutView()
                    .tabItem {
                        Label("contentView.aboutTab".localized(), systemImage: "person.2.fill")
                    }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinator = Coordinator(mock: true)
        ContentView().environmentObject(coordinator)
    }
}
