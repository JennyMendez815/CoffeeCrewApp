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
        CoffeePost(user: "oliviaC", likes: ["rhea3"], details: "Cinnamon latte with ferrero rocher (baristas choice)", caption: "it was not the best.", photoName: "coffee_sample3", storeName: "Mind Coffee"),
        CoffeePost(user: "jacob15", likes: ["david17","xifeng4", "rhea3", "oliviaC", "fernando3"], details: "Hot caramel latte with nice kitty cat coffee art", caption: "The staff are very nice and professional. overall 5/5", photoName: "coffee_sample9", storeName: "Black Diamond Cafe"),
        CoffeePost(user: "david17", likes: ["brianna8", "xifeng4", "rhea3", "oliviaC", "fernando3"], details: "Red ginseng latte w/almond milk", caption: "very good! also comes with bonus points since I loved the ambience of the place and cannot wait to come again!", photoName: "coffee_sample8", storeName: "SoDoI Coffee"),
        CoffeePost(user: "aldamajuan", likes: ["fernando3", "brianna8", "xifeng4", "rhea3", "oliviaC", "fernanda6"], details: "Chai latte with oat milk", caption: "wanted to try something new, did not disappoint!", photoName: "coffee_sample4", storeName: "The Hidden Cafe"),
        CoffeePost(user: "david17", likes: ["fernanda6", "brianna8", "xifeng4", "rhea3", "oliviaC", "fernando3"], details: "Iced matcha with homemade lavender syrup", caption: "so good", photoName: "coffee_sample5", storeName: "1951 Coffee"),
        CoffeePost(user: "rhea3", likes: ["aldamajuan", "fernando3", "xifeng4", "fernanda6"], details: "Iced toasted almond latte with oatmilk", caption: "this was my first time at Artis, was passing by and decided to give it a try. would recommend, the oatmilk is delicious!", photoName: "coffee_sample6", storeName: "Artis Coffee"),
        CoffeePost(user: "oliviaC", likes: ["xifeng3"], details: "Una strada bianca", caption: "delicious lighter than a latte, silky, creamy, requires lactase pills for those who need like me.", photoName: "coffee_sample7", storeName: "Caffe Strada"),
        CoffeePost(user: "fernanda6", likes: ["xifeng3", "aldamajuan", "brianna8"], details: "seasonal acacia honey latte", caption: "On my way home... trying out their seasonal acacia honey latte today. I wish they could keep this on the menu forever... I LOVE IT!", photoName: "coffee_sample10", storeName: "Blue Bottle Coffee")
        
    ]
}
