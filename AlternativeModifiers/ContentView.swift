//
//  ContentView.swift
//  AlternativeModifiers
//
//  Created by ramil on 21.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "Test"
    
    var body: some View {
        VStack {
            Text("SwiftUI Text Editor")
                .font(.largeTitle)
            
            TextView(text: $text, font: UIFont(name: "Georia", size: 30))
                .border(Color.gray, width: 1)
            
            Divider()
            Text(text)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
