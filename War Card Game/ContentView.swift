//
//  ContentView.swift
//  War Card Game
//
//  Created by Pranav Mathur on 05/08/1945 Saka.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Image("logo")
                HStack{
                    Image("card2")
                    Spacer()
                    Image("card3")
                }.padding()
                Image("button")
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text("0")
                            .font(.title)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text("0")
                            .font(.title)
                    }
                    Spacer()
                }
            }.foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
