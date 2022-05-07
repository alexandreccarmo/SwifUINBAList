//
//  PlayerList.swift
//  NBA Player Fun
//
//  Created by Alexandre C do Carmo on 07/05/22.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        
        NavigationView{
            List(players){
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)){
                    PlayerRow(player: currentPlayer).frame(height: 60)
                }
                    
            }.navigationTitle(Text("NBA Finals PLayers"))
        }
        
        
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
