    //
//  ContentView.swift
//  SwiftUIDynamicColors
//
//  Created by Ramill Ibragimov on 24.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World")
                .modifier(TextModifier())
            
            Text("I'm Here")
                .modifier(TextModifier())
            
            Text("Let's Go!")
                .modifier(TextModifier())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    struct TextModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .foregroundColor(.green)
                .frame(height: 40)
            .background(Color("DynamicColor"))
                .padding(.bottom, 5)
        }
    }
