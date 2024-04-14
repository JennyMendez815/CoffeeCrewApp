//
//  CoffeeStore.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/13/24.
//

import Foundation


@Observable class CoffeeStore: Identifiable {
    var id = UUID()
    var name: String
    var items: [String: Double]
    
    init(id: UUID = UUID(), name: String, items: [String : Double]) {
        self.id = id
        self.name = name
        self.items = items
    }
}
