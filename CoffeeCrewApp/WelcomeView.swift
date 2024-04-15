//
//  WelcomeView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct WelcomeView: View {
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
        
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.brown.opacity(0.3).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    welcomeTitle
                    Spacer()
                    enterButton
                    Spacer()
                }
                .padding()
            }
            
        }
    }
    
    private var welcomeTitle: some View {
        HStack {
            Spacer()
            Text("coffee crew")
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var enterButton: some View {
        NavigationLink(destination: 
                        LogInView()
                            .navigationBarBackButtonHidden(true)
        ){
            HStack {
                Text("enter")
                    .padding()
            }
            .foregroundColor(Color.black)
            .padding()
            .font(.custom("Menlo-Regular", size: 40))
            .background(Color.brown.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
        }
    }
}

#Preview {
    WelcomeView()
}
