//
//  AddProfilePic.swift
//  CoffeeCrewApp
//
//  Created by Isha Tailor on 5/3/24.
//

import Foundation
import SwiftData
import SwiftUI
import PhotosUI

struct AddProfilePicView: View {
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
            Text("Add New Profile Picture")
            Spacer()
        }
        .foregroundColor(Color.black)
        .padding()
        .font(.custom("Menlo-Regular", size: 30))
        .background(Color.brown.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        //.alignmentGuide(leading) { _ in
            //return 0 // Adjust as needed
        //}
    }



    private var timelineItems: some View {
        VStack {
            Form {
                Section {
                    PhotosPicker("Select photo", selection: $photoItem, matching: .images).font(.custom("Menlo-Regular", size: 20))
                }
                
                .buttonStyle(DefaultButtonStyle()).font(.custom("Menlo-Regular", size: 20))
                
            }.scrollContentBackground(.hidden)
        }.padding(.vertical, 120)
        
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


