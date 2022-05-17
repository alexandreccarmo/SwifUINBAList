//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by Alexandre C do Carmo on 25/04/22.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    
    var body: some View {
        VStack{
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x:0,y: -90).padding(.bottom, -70).shadow(radius: 15)
            
            Text(player.name).font(.system(size: 50)).fontWeight(.heavy).lineLimit(1).padding(.leading).padding(.trailing).minimumScaleFactor(0.5)
            
//            Text("Hi there friend") teste de visualizacao em diferentes devices
            
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: "\(player.height)")
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        PlayerDetail(player: players[1])
        
        Group {
            
            PlayerDetail(player: players[2]).previewDevice("iPhone SE")
            
            PlayerDetail(player: players[2]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone SE")
            
            PlayerDetail(player: players[2]).environment(\.sizeCategory, .extraSmall).previewDevice("iPhone SE")
                                    
            PlayerDetail(player: players[2]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 8")
            PlayerDetail(player: players[2]).previewDevice("iPhone 8")
            PlayerDetail(player: players[2]).previewDevice("iPhone 8")
            PlayerDetail(player: players[2]).previewDevice("iPhone 11")
            PlayerDetail(player: players[2]).previewDevice("iPhone 13")
            PlayerDetail(player: players[2]).previewDevice("iPhone 13 Pro Max")
        }
    }
}
