//
//  ContentView.swift
//  war-card-game
//
//  Created by Amarpreet Dhillon on 2021-06-16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var dealerCard = "card9"
    @State private var playerScore = 0
    @State private var dealerScore = 0
    
    var body: some View {
        
        ZStack{
        Image("background")
            
            VStack{
                    Spacer()
                    Image("logo")
                    Spacer()
                
                HStack{
                    
                    Image(playerCard)
                        .padding()
                    Image(dealerCard)
                        .padding()
                }
                    Spacer()
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let dealderRand = Int.random(in: 2...14)

                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    dealerCard = "card" + String(dealderRand)
                    
                    // Update the score
                    // playerScore += 1
                    // dealerScore += 1
                    
                    if playerRand > dealderRand {
                        playerScore += 1
                        
                    }
                    
                    else if dealderRand > playerRand {
                        dealerScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                    Spacer()
                
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)

                            .foregroundColor(Color.white)
                            .padding(10.0)
                        
                    }
                    VStack{
                        
                        Text("Dealer")
                            .font(.title2)

                            .foregroundColor(Color.white)
                            .padding(10.0)
                        Text(String(dealerScore))
                            .font(.largeTitle)

                            .foregroundColor(Color.white)
                            .padding(10.0)
                    }
                
                    Spacer()
                    
                }
                
                Spacer()
                

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
