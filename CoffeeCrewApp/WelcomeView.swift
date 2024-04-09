//
//  WelcomeView.swift
//  CoffeeCrewApp
//
//  Created by Jenny Mendez on 4/9/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
