//
//  StringExtensions.swift
//  PokeApp_SwiftUI
//
//  Created by user245669 on 1/6/24.
//

import Foundation

extension String {
    func localized() -> String {
        NSLocalizedString(self, bundle: .main, comment: "")
    }
}


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
