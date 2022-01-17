//
//  ContentView.swift
//  PizzaClass
//
//  Created by Anupama Biswas on 11/01/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pizzaModel = ViewModel()
    
    var body: some View {
        
        VStack {
            List (pizzaModel.pizzas){ pizza in
                VStack(alignment: .leading ) {
                    Text(pizza.name)
                        .font(.headline)
                    HStack (spacing :35){
                        
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                    .font(.caption)
                    .foregroundColor(.pink)
                }
            }
            Button("Add Pineapple"){
                pizzaModel.addPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
