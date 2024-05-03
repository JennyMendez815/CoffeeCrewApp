//
//  CartView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct CartView: View {
    @State private var coffeeManager = CoffeeManager()
    
    @State private var isSheetPresented = false
    @State private var showClearCartAlert = false
    @State private var showCheckoutAlert = false
    
    
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
        .alert(isPresented: $showClearCartAlert) {
            Alert(
                title: Text("Cart is Empty!"),
                message: Text(""),
                dismissButton: .default(Text("OK"))
            )
        }
        .alert(isPresented: $showCheckoutAlert) {
            Alert(
                title: Text("Cart is Empty!"),
                message: Text(""),
                dismissButton: .default(Text("OK"))
            )
        }
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
        .background(.brown.opacity (0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .sheet(isPresented: $isSheetPresented) {
                    OrderProgressSheet()
                        .presentationDetents([.fraction(0.3)])
                }
    }
    
    
    private var cartItems: some View {
        HStack {
            //Spacer()
            VStack (alignment: .leading){
                //ForEach(CoffeeSampleData.stores) { store in
                ForEach(coffeeManager.coffeeStores) { store in
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
        .background(coffeeManager.coffeeStores.isEmpty ? Color.clear : Color.brown.opacity(0.2))
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
            Button(action: {
                if coffeeManager.coffeeStores.isEmpty {
                    showClearCartAlert = true
                } else {
                    coffeeManager.clearCart()
                }
            }) {
                Text("clear cart")
                    .foregroundColor(Color.black)
                    .padding()
                    .font(.custom("Menlo-Regular", size: 15))
                    .background(.brown.opacity (0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            Spacer()
            
            Button(action: {
                if coffeeManager.coffeeStores.isEmpty {
                    showCheckoutAlert = true
                } else {
                    isSheetPresented.toggle()
                }
            }){
                Text("checkout")
                    .foregroundColor(Color.black)
                    .padding()
                    .font(.custom("Menlo-Regular", size: 15))
                    .background(.brown.opacity (0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            Spacer()
        }
    }
    
    private var cartButtons: some View {
        HStack {
            Spacer()
            NavigationLink(destination: TimelineView()) {
                Image(systemName: "house.fill")
            }
            Spacer()
            Image(systemName: "cart.fill")
            Spacer()
            NavigationLink(destination: SearchView()) {
                Image(systemName: "magnifyingglass")
            }
            Spacer()
            NavigationLink(destination: ProfileView()) {
                Image(systemName: "person.fill") // This icon won't navigate anywhere
            }
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .navigationBarBackButtonHidden(true) // Hide the back button
    }

    
    // Below are functions & Additional Views
    
    
    
    
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


struct OrderProgressSheet: View {
    @State private var progress: Double = 0.0
    @State private var timer: Timer? = nil
    @State private var isReadyForPickUp: Bool = false

    var body: some View {
        VStack {
            if isReadyForPickUp {
                Text("Ready for Pick Up! ☕️")
                    .font(.custom("Menlo-Regular", size: 24))
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
            } else {
                Text("Order Progress")
                    .font(.custom("Menlo-Regular", size: 24))
                    .padding(.bottom, 10)

                ProgressView(value: progress, total: 1.0)
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding()
            }
            
        }
        .padding()
        .presentationDetents([.fraction(0.3)])
        .onAppear {
            startProgressAnimation()
        }
        .onDisappear {
            stopProgressAnimation()
        }
    }

    
    private func startProgressAnimation() {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                incrementProgress()
            }
        }
    
    private func stopProgressAnimation() {
        timer?.invalidate()
        timer = nil
    }

    private func incrementProgress() {
        withAnimation {
            progress += 0.1
            if progress >= 1.0 {
                isReadyForPickUp = true
                stopProgressAnimation()
            }
        }
    }
}



#Preview {
    CartView()
}
