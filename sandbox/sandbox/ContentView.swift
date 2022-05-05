//
//  ContentView.swift
//  sandbox
//
//  Created by Анастасия Тюрина on 5/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        Button(action: {})
        {
            Text("A Button")
        }
        .simultaneousGesture(
            LongPressGesture()
                .onEnded { _ in
                    print("Loooong")
                }
        )
        .highPriorityGesture(TapGesture()
                                .onEnded { _ in
                                    print("Tap")
                                })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
