//
//  TimelineView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct TimelineView: View {
    @State private var coffeeManager = CoffeeManager()
    
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
            HStack {
                Image("logo").resizable().frame(width: 40, height: 40).padding(.leading, -5)
                Text("coffee crew").lineLimit(1)
                
            }
            .foregroundColor(Color.black)
            .padding()
            .font(.custom("Menlo-Regular", size: 30))
            .background(Color.brown.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Spacer()
            HStack {
                NavigationLink(destination: NewPostView()) {
                    Image(systemName: "mug")
                }
            }
            .foregroundColor(Color.black)
            .padding()
            .font(.custom("Menlo-Regular", size: 30))
            .background(Color.brown.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        
    }
    
    
    private var timelineItems: some View {
        
        ScrollView {
            ForEach(coffeeManager.coffeePosts) { post in
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
            }
        }.padding(.vertical, 5)
        
    }
    
    private var timelineButtons: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
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
    TimelineView()
}

