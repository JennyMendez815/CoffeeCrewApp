//
//  CartView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct CartView: View {
    @State private var coffeeManager = CoffeeManager()
    
    
    var body: some View {
        VStack {
            //Spacer()
            cartTitle
            Spacer()
            cartItems
            Spacer()
            cartTotal
            Spacer()
            cartCCC
            Spacer()
            cartButtons
            //Spacer()
            
        }
        .padding()
        .background(.brown.opacity(0.3))
    }
    
    private var cartTitle: some View {
        HStack {
            Spacer()
            Text("cart")
            Spacer()
            
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        //.font(.system(size: 40, weight: .light))
        .background(.brown.opacity (0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    
    private var cartItems: some View {
        HStack {
            //Spacer()
            VStack (alignment: .leading){
                ForEach(CoffeeSampleData.stores) { store in
                    VStack (alignment: .leading){
                        Text("\(store.name):")
                        ForEach(store.items.sorted(by: <), id: \.key) { item, price in
                            Text("• \(item): $\(price, specifier: "%.2f")")
                                .font(.custom("Menlo-Regular", size: 15))
                        }
                        Text("\n")
                    }
                }
            }
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 15))
        //.font(.system(size: 20, weight: .light))
        .background(.brown.opacity (0.2))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var cartTotal: some View {
        let total = calculateTotal()
        return Text("Total: $\(total, specifier: "%.2f")")
            .foregroundColor(Color.black)
            .padding()
            .font(.custom("Menlo-Regular", size: 15))
            //.font(.system(size: 20, weight: .light))
            .background(.brown.opacity (0.4))
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var cartCCC: some View {
        HStack {
            Spacer()
            Text("clear cart")
                .foregroundColor(Color.black)
                .padding()
                .font(.custom("Menlo-Regular", size: 15))
                //.font(.system(size: 20, weight: .light))
                .background(.brown.opacity (0.4))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            Spacer()
            
            Text("checkout")
                .foregroundColor(Color.black)
                .padding()
                .font(.custom("Menlo-Regular", size: 15))
                //.font(.system(size: 20, weight: .light))
                .background(.brown.opacity (0.4))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            Spacer()
        }
    }
    
    private var cartButtons: some View {
        HStack {
            Spacer()
            Button(action: {
                //HomeView
            }) {
                Image(systemName: "house.fill")
            }
            Spacer()
            Image(systemName: "cart.fill")
            Spacer()
            Button(action: {
                //SearchView
            }) {
                Image(systemName: "magnifyingglass")
            }
            Spacer()
            Button(action: {
                //ProfileView
            }) {
                Image(systemName: "person.fill")
            }
            Spacer()
            
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        //.font(.system(size: 40, weight: .light))
        .background(.brown.opacity (0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private func calculateTotal() -> Double {
        var totalPrice = 0.0
        
        for store in coffeeManager.coffeeStores {
            for (_, price) in store.items {
                totalPrice += price
            }
        }
        
        return totalPrice
    }
}

#Preview {
    CartView()
}
