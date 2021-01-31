//
//  ContentView.swift
//  diece-swiftUI
//
//  Created by Syed Muhammad on 16/03/2020.
//  Copyright © 2020 Syed Muhammad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    
    var body: some View {
       
        ZStack{
            Image("background")
            .resizable()
                .edgesIgnoringSafeArea(.all)
        
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceImage(n: leftDiceNumber)
                    DiceImage(n: rightDiceNumber)
                }
                .padding(.horizontal)
                   Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)

                }
                  .background(Color.red)
                
            }
            
        }
    }
}
struct DiceImage: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


