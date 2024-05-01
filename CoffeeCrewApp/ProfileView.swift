//
//  ProfileView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack {
            profileTitle
            Spacer()
            profileInfo
            Spacer()
            stats
            Spacer()
            profileActions
        }
        .padding()
        .background(Color.brown.opacity(0.3))
    }
    
    private var profileTitle: some View {
        HStack {
            Spacer()
            Text("profile")
            Spacer()
        }
        .foregroundColor(.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var profileInfo: some View {
        //
        VStack(alignment: .leading) {
            Spacer()
            Text("first last")
                .font(.custom("Menlo-Regular", size: 30))
            Text("@username")
                .font(.custom("Menlo-Regular", size: 30))
        }
        //.foregroundColor(.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 20))
        //.background(Color.blue.opacity(0.2))
        //.clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var stats: some View {
        VStack(alignment: .leading) {
            Text("about:")
                .font(.custom("Menlo-Regular", size: 20))
            Text("user since _____")
                .font(.custom("Menlo-Regular", size: 20))
            Text("# of coffees had ___ ")
                .font(.custom("Menlo-Regular", size: 20))
            Spacer()
            Text("contact info")
                .font(.custom("Menlo-Regular", size: 20))
            Text("email:email@berkeley.edu")
                .font(.custom("Menlo-Regular", size: 20))
            Text("phone: (123) 456-7890")
                .font(.custom("Menlo-Regular", size: 20))
            Spacer()

            Text("favorite coffee: ____ ")
                .font(.custom("Menlo-Regular", size: 20))

        }
        .foregroundColor(.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 20))
        .background(Color.brown.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var profileActions: some View {
        HStack {
            Spacer()
            Button(action: {
                // Perform action for editing profile
            }) {
                Text("log out")
            }
            .foregroundColor(.black)
            .padding()
            .font(.custom("Menlo-Regular", size: 20))
            .background(Color.brown.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
