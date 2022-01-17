//
//  ContentView.swift
//  Variable-Optionals
//
//  Created by Anupama Biswas on 11/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var array :[String]?
    
    var body: some View {
        VStack {
            HStack {
                Button("clear"){
                    array = nil
                }
                Button("add"){
                    array = [String]()
                    array?.append("Anupama")
                    array?.append("Rahul")
                    array?.append("Naghma")
                    
                }
            }
            if array == nil {
                Text("Please tap 'add' button")
            }else {
                List (array!, id: \.self){ item in
                    Text(item)
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
