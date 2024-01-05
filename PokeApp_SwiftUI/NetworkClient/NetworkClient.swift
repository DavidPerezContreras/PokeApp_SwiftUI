//
//  NetworkClient.swift
//  PokeApp_SwiftUI
//
//  Created by David Perez on 4/1/24.
//

import Foundation

protocol NetworkClient {
    func get<T: Decodable>(url: String) async throws -> T
}
