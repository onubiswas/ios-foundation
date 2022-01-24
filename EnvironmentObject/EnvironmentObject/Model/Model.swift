//
//  Model.swift
//  EnvironmentObject
//
//  Created by Anupama Biswas on 24/01/22.
//

import Foundation

class Model: ObservableObject{
    
    @Published var name = true
    @Published var address = true
    @Published var company = true
    @Published var years = true
    
    
    var people = [
            Person(
                name: "Akanksha",
                address: "555 Balagere Street",
                company: "ABC",
                yearsOfExperience: 2
            ),
            Person(
                name: "Naghma",
                address: "123 whitefield",
                company: "ABC",
                yearsOfExperience: 17
            ),
            Person(
                name: "Khushboo",
                address: "99 Netaji Road",
                company: "ABC",
                yearsOfExperience: 21
            ),
            Person(
                name: "Shivam",
                address: "changigard",
                company: "ABC",
                yearsOfExperience: 16
            ),
            Person(
                name: "Nitesh",
                address: "Delhi",
                company: "ABC",
                yearsOfExperience: 4
            )
        ]
    
}

struct Person : Identifiable {
    var id = UUID()
    var name : String
    var address:String
    var company : String
    var yearsOfExperience :Int
}
 



