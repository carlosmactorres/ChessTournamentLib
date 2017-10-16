//
//  RoundRobbin.swift
//  FWTournamentSwift
//
//  Created by Carlos Torres on 16/10/17.
//  Copyright © 2017 Carlos Torres. All rights reserved.
//

import Foundation

class RoundRobbin {
    let nPlayers : Int
    let oddPlayers : Bool
    let rounds : Int
    let boards : Int
    
    init(_ players: Int) {
        
        if(players%2 != 0){
            oddPlayers = true
            nPlayers = players + 1
        }
        else{
            oddPlayers = false
            nPlayers = players
        }
        rounds = nPlayers - 1
        boards = nPlayers / 2
        print("the numbers of players is \(oddPlayers ? nPlayers - 1 : nPlayers)")
        print("Tournament will have \(rounds) rounds and \( boards) boards")
        
    }
    
    
    private func filter(_ player:Int) -> Int {
        return (player < nPlayers) ? player : player - nPlayers + 1
    }
    
    func round(_ round:Int){
        if round < nPlayers{
            print("Round Nº \(round)")
            
            
            for m in 1 ... boards{
                var whites ,  blacks : Int
                if round % 2 != 0{
                    whites = filter(m + (round-1) / 2)
                    
                    blacks = (m==1) ? nPlayers : filter(boards + (round - 1) / 2 + boards - m  + 1)
                    
                }
                else{
                    
                    
                    whites = (m==1) ? nPlayers : filter(boards + m + (round/2) - 1)
                    blacks = boards + round/2 - m + 1
                    
                    
                    
                }
                print("\(whites) - \(blacks)")
            }
        }
        else{
            print("incorrect round's number")
        }
    }
}
