//
//  ObjRound.swift
//  FWTournamentSwift
//
//  Created by Carlos Torres on 16/10/17.
//  Copyright © 2017 Carlos Torres. All rights reserved.
//

import Foundation
class ObjR: ObjT {
    var NumberOfRound : Int
    init(_ players : Int, _ round: Int) {
        NumberOfRound = round
        super.init()
        self.nPlayers = players
        
    }
    
}
