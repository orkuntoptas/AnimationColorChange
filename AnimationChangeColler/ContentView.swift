//
//  ContentView.swift
//  AnimationChangeColler
//
//  Created by Orkun Toptaş on 31.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var switchcolor = Color(.blue)
    
    var body: some View {
        ZStack{
            Image(systemName: "person")
                .font(.system(size: 200))
                .foregroundStyle(.linearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom))
        Circle()
                .stroke(lineWidth: 15)
                .shadow(radius: 9)
                .frame(width: 300, height: 300, alignment: .center)
                .ignoresSafeArea()
                .foregroundColor(switchcolor)
                .task {
                    withAnimation(Animation.easeIn(duration: 1).delay(0.7).repeatForever()) {
                        switchcolor = Color(.purple)
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
