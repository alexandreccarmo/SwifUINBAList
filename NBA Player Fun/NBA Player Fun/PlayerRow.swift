//
//  PlayerRow.swift
//  NBA Player Fun
//
//  Created by Alexandre C do Carmo on 07/05/22.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
            Text(player.name).font(.largeTitle).lineLimit(1).minimumScaleFactor(0.5)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
