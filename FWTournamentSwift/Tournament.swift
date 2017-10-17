//
//  Tournament.swift
//  FWTournamentSwift
//
//  Created by Carlos Torres on 16/10/17.
//  Copyright © 2017 Carlos Torres. All rights reserved.
//

import Foundation

public typealias pairData = (board: Int, white: Int, black: Int)

public class Tournament{
     
    public var name: String = ""
    public init() {
    }
    
    
    public func roundRobbin(_ players : Int, _ round : Int)->[pairData]{
        //let R = RoundRobin(players, round)
        return RoundRobbin(players, round).pairing
    }

}
