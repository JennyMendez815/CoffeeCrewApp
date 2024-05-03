//
//  TimelineView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var coffeeManager = CoffeeManager() 
    
    var body: some View {
        VStack {
//            timelineTitle
//            Spacer()
            searchField
            timelineItems(filteredPosts: filteredPosts)
            Spacer()
            timelineButtons
        }
        .padding()
        .padding(.bottom, -30)
        .background(Color.brown.opacity(0.3))
    }
    
    private var timelineTitle: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            Text("Search")
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    private var searchField: some View {
        HStack {
            TextField("Search by caption or details...", text: $searchText)
                .foregroundColor(Color.black)
                .padding()
                .font(.custom("Menlo-Regular", size: 15))
                .background(Color.brown.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            Image(systemName: "magnifyingglass")
                .font(.custom("Menlo-Regular", size: 30))
        }
        
    }
    
    private var filteredPosts: [CoffeePost] {
        if searchText.isEmpty {
            return coffeeManager.coffeePosts
        } else {
            return coffeeManager.coffeePosts.filter { post in
                post.caption.lowercased().contains(searchText.lowercased()) ||
                post.details.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    private var gridItems: [GridItem] {
            Array(repeating: .init(.flexible()), count: 2)
        
        }

    private func timelineItems(filteredPosts: [CoffeePost]) -> some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 10) {
                ForEach(filteredPosts) { post in
                    NavigationLink(destination: PostDetailView(post: post)) {
                        PostThumbnailView(post: post)
                    }
                }
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 10)
        }
    
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
            Image(systemName: "magnifyingglass")
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
        .navigationBarBackButtonHidden(true) // Hide the back button
    }
    
    struct PostThumbnailView: View {
        var post: CoffeePost

        var body: some View {
            VStack {
                Image(post.photoName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }
    }
    
    struct PostDetailView: View {
        var post: CoffeePost
        @Environment(\.presentationMode) var presentationMode

        var body: some View {
            VStack {
                Spacer()
                VStack {
                    HStack{
                        Text(post.user).padding(.leading, 15).font(.custom("Menlo-Regular", size: 15))
                        Spacer()
                        Text(post.storeName).padding(.trailing, 15).font(.custom("Menlo-Regular", size: 15))
                    }.padding(.vertical, 5).padding(.top, 5)
                    Image(post.photoName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 340, height: 340)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    HStack {
                        Image(systemName: "cart").padding(.leading, 10).padding(.top, 5).font(.custom("Menlo-Regular", size: 30))
                        if (post.likes.contains("aldamajuan")) {
                            Image(systemName: "heart.fill").padding(.top, 5).font(.custom("Menlo-Regular", size: 30))
                        } else {
                            Image(systemName: "heart").padding(.top, 5).font(.custom("Menlo-Regular", size: 30))
                        }
                        Text(post.formattedLikes()).font(.custom("Menlo-Regular", size: 12)).padding(.top, 10)
                        Spacer()
                    }
                    HStack {
                        Text("Review: ").padding(.leading, 15).bold().font(.custom("Menlo-Regular", size: 15))
                        Spacer()
                    }.padding(.top, 5)
                    HStack {
                        Text(post.caption).padding(.leading, 15).font(.custom("Menlo-Regular", size: 15))
                        Spacer()
                    }.padding(.bottom, 5)
                    HStack {
                        Text("Details: ").padding(.leading, 15).bold().font(.custom("Menlo-Regular", size: 15))
                        Spacer()
                    }.padding(.top, 5)
                    HStack {
                        Text(post.details).padding(.leading, 15).font(.custom("Menlo-Regular", size: 15))
                        Spacer()
                    }.padding(.bottom, 15)
                }.background(Color.brown.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 20)).padding(.vertical, 10)
                Spacer()
            }.padding().background(Color.brown.opacity(0.3))
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: dismissButton)
        }

        private var dismissButton: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Text("<")
                        .padding(2)
                }
                .foregroundColor(Color.black)
                .padding()
                .font(.custom("Menlo-Regular", size: 20))
                .background(Color.brown.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
    }
}
    
    
    
    #Preview {
        SearchView()
    }

