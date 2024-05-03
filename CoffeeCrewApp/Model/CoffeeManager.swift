//
//  CoffeeManager.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/13/24.
//

import SwiftUI

@Observable class CoffeeManager {
    var coffeeStores: [CoffeeStore] = CoffeeSampleData.stores
    
    func clearCart() {
        coffeeStores = []
    }
}
