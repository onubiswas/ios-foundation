//
//  ContentView.swift
//  GeometryReaderExample
//
//  Created by Anupama Biswas on 18/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0 ){
            GeometryReader{ geo in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("Width: \(geo .size.width), Height: \(geo.size.height)")
                            
                    }
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width*2/3, height: geo.size.height/4)
                    .padding(.leading, geo.size.width/6)
                    .padding(.top, geo.size.height/3)
            }
            GeometryReader{ geo in
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geo.size.width/2)
                
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: geo.size.width/2)
                    .padding(.leading, geo.size.width/2)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
