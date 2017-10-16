//
//  Tournament.swift
//  FWTournamentSwift
//
//  Created by Carlos Torres on 16/10/17.
//  Copyright © 2017 Carlos Torres. All rights reserved.
//

import Foundation


public class Tournament{
    
    public init() {
        
    }
    
    public func roundRobbin(_ players : Int, _ rounds : Int){
        let T = RoundRobbin(players)
        T.round(rounds)
    }

}
