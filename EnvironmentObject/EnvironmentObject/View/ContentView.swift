//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Anupama Biswas on 24/01/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        TabView{
            VStack{
                Text("List of Employee:")
                    .font(.title)
                List(model.people){ Person in
                    PersonView(person:Person)
                }
                
            }
            .tabItem { Image(systemName: "person.2") }
            VStack{
                Text("Preferences:")
                    .font(.title)
                Toggle("show name:", isOn: $model.name)
                Toggle("show address:", isOn: $model.name)
                Toggle("show company:", isOn: $model.name)
                Toggle("show yearsOfExperience:", isOn: $model.name)
            }
            .tabItem{Image(systemName: "gearshape")}
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
