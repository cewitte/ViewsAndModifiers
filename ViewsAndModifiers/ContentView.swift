//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Carlos Eduardo Witte on 06/07/24.
//

import SwiftUI

// Create a custom ViewModifier (and accompanying View extension)
// that makes a view have a large, blue font suitable for
// prominent titles in a view.

struct CoolTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.maximum(40, 40))
            .background(.primary)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .clipShape(.ellipse)
    }
}

extension View {
    func coolTitleStyle() -> some View {
        modifier(CoolTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Traditional Hello World")
                .coolTitleStyle()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
