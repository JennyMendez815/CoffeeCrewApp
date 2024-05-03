//
//  NewPostView.swift
//  CoffeeCrewApp
//
//  Created by Juan Aldama on 5/3/24.
//

import Foundation
import SwiftData
import SwiftUI
import PhotosUI

struct NewPostView: View {
    @Environment(\.modelContext) private var context
    @State private var coffeeManager = CoffeeManager()
    @State private var caption: String = ""
    @State private var details: String = ""
    @State private var photoName: String = "default_photo"
    @State private var storeName: String = ""
    @State private var photoItem: PhotosPickerItem?
    @State private var image: Image?

    var body: some View {
        VStack {
            timelineTitle
            Spacer()
            timelineItems
            Spacer()
            timelineButtons
        }
        .padding()
        .padding(.bottom, -30)
        .background(Color.brown.opacity(0.3))
    }

    private var timelineTitle: some View {
        HStack {
            Spacer()
            Text("create new post")
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 30))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }

    private var timelineItems: some View {
        VStack {
            Form {
                Section {
                    
                    PhotosPicker("Select photo", selection: $photoItem, matching: .images).font(.custom("Menlo-Regular", size: 20))
                    TextField("Caption", text: $caption).font(.custom("Menlo-Regular", size: 20))
                    TextField("Details", text: $details).font(.custom("Menlo-Regular", size: 20))
                    TextField("Cafe Name", text: $storeName).font(.custom("Menlo-Regular", size: 20))
                }
                
                Button("Submit Post") {
                    submitPost()
                }
                .buttonStyle(DefaultButtonStyle()).font(.custom("Menlo-Regular", size: 20))
                
            }.scrollContentBackground(.hidden)
        }.padding(.vertical, 120)
        
    }

    private func submitPost() {
        let newPost = CoffeePost(user: "current_user", likes: [], details: details, caption: caption, photoName: photoName, storeName: storeName)
        coffeeManager.coffeePosts.append(newPost)
        caption = ""
        details = ""
        storeName = ""
    }

    private var timelineButtons: some View {
        HStack {
            Spacer()
            NavigationLink(destination: TimelineView()) {
                Image(systemName: "house.fill")
            }
            Spacer()
            NavigationLink(destination: CartView()) {
                Image(systemName: "cart.fill")
            }
            Spacer()
            NavigationLink(destination: SearchView()) {
                Image(systemName: "magnifyingglass")
            }
            Spacer()
            NavigationLink(destination: ProfileView()) {
                Image(systemName: "person.fill")
            }
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .navigationBarBackButtonHidden(true)
    }
}
    
    
    
    #Preview {
        NewPostView()
    }

