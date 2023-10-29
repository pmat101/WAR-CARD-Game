//
//  ContentView.swift
//  War Card Game
//
//  Created by Pranav Mathur on 05/08/1945 Saka.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding()
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                            .font(.title)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    Spacer()
                }
            }.foregroundStyle(.white)
        }
    }
    func deal()
    {
        var random1 = Int.random(in: 2...14)
        var random2 = Int.random(in: 2...14)
        playerCard = "card" + String(random1)
        cpuCard = "card" + String(random2)
        if random1 > random2
        {
            playerScore += 1
        }
        else if random1 < random2
        {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
