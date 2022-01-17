//
//  ContentView.swift
//  TabViewExample
//
//  Created by Anupama Biswas on 17/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 1
    var body: some View {
        TabView (selection: $tabIndex){
            Text("This tab's tag is \(tabIndex).")
                .font(.headline)
                .foregroundColor(.blue)
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(1)
            
            Button("Take me to tab 3!") {
                tabIndex = 3
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right.square")
                    Text("Tab 2")
                }
            }
            .tag(2)
            List {
                ForEach(0..<100) { _ in
                    Text("This is tab 3!")
                        .foregroundColor(.red)
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }
            .tag(3)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
