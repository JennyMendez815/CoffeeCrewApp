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
            Spacer()
            Text("timeline")
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 40))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    
    private var timelineItems: some View {
        
        ScrollView {
            ForEach(CoffeeSampleData.posts) { post in
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
                        Image(systemName: "heart").padding(.leading, 10).padding(.top, 5).font(.custom("Menlo-Regular", size: 30))
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
            Button(action: {
                //HomeView
            }) {
                Image(systemName: "house.fill")
            }
            Spacer()
            Image(systemName: "clock.fill")
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
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    TimelineView()
}
