//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Pradeep on 19/04/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import SwiftUI

struct capsuleText: View {
    
    var text: String
    
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.blue)
            .background(Color.yellow)
            .clipShape(Capsule())
        
        
    }
}

struct Title: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.blue)
            .padding()
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
extension View{
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}
struct ContentView: View {
    
    @State private var isRed = false
    
    let text1 = Text("First text")
    let text2 = Text("First text")
    
    var body: some View {
        VStack(spacing: 15){
            capsuleText(text: "First Text")
            capsuleText(text: "Second Text")
            
            Text("hello world")
                .modifier(Title())
            Text("SwiftUI")
            .titleStyle()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
