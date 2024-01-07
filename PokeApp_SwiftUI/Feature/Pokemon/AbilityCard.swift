//
//  AbilityCard.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/7/24.
//

import Foundation
import SwiftUI


struct AbilityCardView: View {
    let abilityName: String
    
    init(abilityName: String) {
        self.abilityName = abilityName
    }

    var body: some View {
        VStack {
            Text(abilityName)
        }
        .frame(width: 100, height: 20)
        .background(Color.blue)
        .cornerRadius(10)
        .padding([.horizontal, .bottom],5)
    }
}
