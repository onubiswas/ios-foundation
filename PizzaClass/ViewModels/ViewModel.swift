//
//  ViewModel.swift
//  PizzaClass
//
//  Created by Anupama Biswas on 11/01/22.
//

import Foundation

class ViewModel :ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init(){
        var pizza1 = Pizza()
        pizza1.name = "FARM HOUSE"
        pizza1.topping1 = "crisp capsicum"
        pizza1.topping2 = "succulent mushrooms"
        pizza1.topping3 = "resh tomatoes"
        pizzas.append(pizza1)
        
        var pizza2 = Pizza()
        
        pizza2.name = "Peppy Paneer"
        pizza2.topping1 = "Chunky paneer"
        pizza2.topping2 = "crisp capsicum"
        pizza2.topping3 = "spicy red pepper"
        pizzas.append(pizza2)
        
        var pizza3 = Pizza()
        pizza3.name = "MEXICAN GREEN WAVE"
        pizza3.topping1 = "crunchy onions"
        pizza3.topping2 = "crisp capsicum"
        pizza3.topping3 = "jalapeno"
        pizzas.append(pizza3)
    }
    func addPineapple() {
        
        for i in 0...pizzas.count-1 {
            pizzas[i].topping1 = "Pineapple"
        } 
        
    }
    
}
