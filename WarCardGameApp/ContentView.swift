//
//  ContentView.swift
//  WarCardGameApp
//
//  Created by Mohit Mali on 01/09/23.
//

import SwiftUI

struct ContentView: View {
  @State  var addplay = "card2"
  @State  var addplay1 =  "card3"
   @State var addplay2 =  "card5"
  @State  var player = 0
   @State var player1 = 0
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    //Spacer()
                    Image(addplay)
                    //Spacer()
                   // Image(addplay1)
                    //Spacer()
                    Image(addplay2)
                    
                }
                Spacer()
                Button{
                    deal()
                }
            label:{
                Image("button")
            }
         
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom , 10)
                        
                        Text(String(player))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom , 10)
                        
                        Text(String(player1))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
            
        }
    }
        func deal(){
            // Randomize the player cards
            var playCard  = (Int.random(in: 2...14))
            addplay = "card"+String(playCard)
            // Randomize the player cards
            var playcard1 = (Int.random(in: 2...14))
            addplay2 = "card"+String(playcard1)
            // update the scores
            if playCard > playcard1{
                player += 1
            }
            else if playcard1 > playCard{
                player1 += 1
            }
            
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
