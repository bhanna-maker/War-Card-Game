//
//  ContentView.swift
//  War Card Game
//
//  Created by Benjamine Hanna on 2/10/26.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "card11"
    var computerCard = "card5"
    var playerScore = 0
    var computerScore = 0
    
    
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
            
            VStack {
                Spacer()
                Image(.logo)
                Spacer()
                HStack {
                    Image(.card2)
                    Image(.card3)
                }
                Spacer()
                Button("Deal") {
                 print("Deal me out Jack!")
                }
                Spacer()
                
                //Score()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 40.0)
                        
                    }
                    Spacer()
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 40.0)

                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
