//
//  PokeApp_SwiftUIApp.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import SwiftUI

@main
struct PokeApp_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Coordinator())
        }
    }
}
