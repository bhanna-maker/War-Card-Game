//
//  ContentView.swift
//  War Card Game
//
//  Created by Benjamine Hanna on 2/10/26.
//

import SwiftUI

struct ContentView: View {
 @State private var playerCard = "back"
 @State private var computerCard = "back"
   @State private var playerScore = 0
    @State private var computerScore = 0
 
    
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
            
            VStack {
                Spacer()
                Image(.logo)
                Spacer()
                HStack {
                    Image(playerCard)
                    Image(computerCard)
                }
                Spacer()
                Button {
                 dealCards()
                } label: {
                    Image(.button)
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


func dealCards() {
    //1. Randomize cards
   let playerValue = Int.random(in: 2...14)
    let computerValue = Int.random(in: 2...14)

    
    //2. update card image
    playerCard = "card\(playerValue)"
    computerCard = "card\(computerValue)"
    
    //3. calculate score
    if playerValue > computerValue {
       playerScore += 1
    } else if computerValue > playerValue {
        computerScore += 1
    } else {
        computerScore += 1
        playerScore += 1
    }
}
}
#Preview {
    ContentView()
}
