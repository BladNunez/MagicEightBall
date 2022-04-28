//
//  ContentView.swift
//  MagicEightBall
//
//  Created by Bladimir Nunez on 4/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var currentFortune = "Click to learn your fate"
    var body: some View {
        VStack(alignment: .leading) {
            Button("Tell me my fortune") {
                
               let choice = Int.random(in: 1...3)
                
                if(choice == 1){
                    currentFortune = "yes"
                }
                if(choice == 2){
                    currentFortune = "No"
                }
                if(choice == 3){
                    currentFortune = "Maybe"
                }
            }
            
            
            
            Text(currentFortune)
                .font(.largeTitle)
                .foregroundColor(Color.yellow)
            .padding()
        }
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
