//
//  CoffeeManager.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/13/24.
//

import SwiftUI

@Observable class CoffeeManager {
    var coffeeStores: [CoffeeStore] = CoffeeSampleData.stores
    var coffeePosts: [CoffeePost] = CoffeeSampleData.posts
    
    func clearCart() {
        coffeeStores = []
    }
}
