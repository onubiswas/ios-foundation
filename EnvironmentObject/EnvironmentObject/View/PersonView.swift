//
//  PersonView.swift
//  EnvironmentObject
//
//  Created by Anupama Biswas on 24/01/22.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var model : Model
    var person : Person
    
    var body: some View {
        VStack (alignment: .leading){
            if model.name {
                Text("Name: \(person.name)")
            }
            if model.address {
                Text("Address: \(person.address)")
            }
            if model.company {
                Text("Company: \(person.company)")
            }
            if model.years {
                Text("Years of Experience: \(person.yearsOfExperience)")
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person (
                                   name: "Anima",
                                   address: "1 2 3 lane",
                                   company: "ABC",
                                   yearsOfExperience: 3
                                   )
        ).environmentObject(Model())
    }
}
