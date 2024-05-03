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
            //Spacer()
            profilePic
            Spacer()
            profileInfo
            Spacer()
            stats
            Spacer()
            profileActions
            Spacer()
            buttons
            //Spacer()
        }
        .padding()
        //.padding(.vertical)
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
    
    private var profilePic: some View {
        VStack(alignment: .center) {
            Spacer()
            Image("profile_pic") // Use the name of your image asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
        }
        .background(Color.brown.opacity(0.2))
        .clipShape(Circle())

    }
                                
    
    private var profileInfo: some View {
        VStack {
            Text("first last")
                .font(.custom("Menlo-Regular", size: 20))
            Text("@username")
                .font(.custom("Menlo-Regular", size: 20))
        }
    }



    private var stats: some View {
        VStack(alignment: .leading) {
            Text("about:")
                .font(.custom("Menlo-Regular", size: 20))
            Text("user since _____")
                .font(.custom("Menlo-Regular", size: 20))
            Text("# of coffees had ___ ")
                .font(.custom("Menlo-Regular", size: 20))
            Text("contact info")
                .font(.custom("Menlo-Regular", size: 20))
            Text("email: email@berkeley.edu")
                .font(.custom("Menlo-Regular", size: 20))
            Text("phone: (123) 456-7890")
                .font(.custom("Menlo-Regular", size: 20))
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
        Button(action: {
            // Perform action for logging out
        }) {
            Text("Log Out")
        }
        .foregroundColor(.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 20))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var buttons: some View {
        HStack {
            Button(action: {
                // Navigate to HomeView
            }) {
                Image(systemName: "house.fill")
            }
            Spacer()
            Image(systemName: "cart.fill")
            Spacer()
            Button(action: {
                // Navigate to SearchView
            }) {
                Image(systemName: "magnifyingglass")
            }
            Spacer()
            Button(action: {
                // Navigate to ProfileView
            }) {
                Image(systemName: "person.fill")
            }
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(.brown.opacity (0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
