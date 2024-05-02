//
//  CoffeeSampleData.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/13/24.
//

import Foundation

struct CoffeeSampleData {
    static let stores: [CoffeeStore] = [
        CoffeeStore(name: "voyagers coffee", items: ["iced caramel latte": 3.50, "mocha frappuccino": 4.00]),
        CoffeeStore(name: "philz coffee", items: ["iced americano": 3.67])
    ]
    
    static let posts: [CoffeePost] = [
        CoffeePost(user: "aldamajuan", likes: ["brianna8", "fernando3", "xifeng4", "fernanda6"], details: "iced caramel latte", caption: "hands down one of the best iced coffees i’ve ever had", photoName: "coffee_sample1", storeName: "Voyager's Coffee"),
        CoffeePost(user: "rhea3", likes: ["aldamajuan", "fernando3", "xifeng4", "fernanda6"], details: "Small Philtered Soul Cold Brew with Creamy Cream and Sweet Sugar. I asked for cinnamon in the filter and light ice", caption: "Ordered a small but Bo made me a medium. So sweet!", photoName: "coffee_sample2", storeName: "Philz Coffee"),
        CoffeePost(user: "oliviaC", likes: ["rhea3"], details: "Cinnamon latte with ferrero rocher (baristas choice)", caption: "", photoName: "coffee_sample3", storeName: "Mind Coffee")
    ]
}
