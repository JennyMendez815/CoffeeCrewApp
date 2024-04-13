//
//  CartView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct CartView: View {
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
            Spacer()
            VStack {
                Text("store name #1:\n - list of items\n")
                Text("store name #2:\n - list of items")
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
        Text("total: $20.00")
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
}

#Preview {
    CartView()
}
