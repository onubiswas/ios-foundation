//
//  ContentView.swift
//  SwipeCard
//
//  Created by Anupama Biswas on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor: Color{
        return Color(
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
    }
    
    var body: some View {
        TabView{
            ForEach(1..<51){ index in
                GeometryReader { geometry in
                    ZStack{
                        Rectangle()
                            .foregroundColor(cardColor)
                            .cornerRadius(20)
                            .shadow( radius: 10)
                        Image(systemName: "\(index).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .frame( height: max(geometry.size.height-50, 100))
                }
                .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
