//
//  APIResponse.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

struct APIResponse<T:Decodable>:Decodable{
    let response: T
}
