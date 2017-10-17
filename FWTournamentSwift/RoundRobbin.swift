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
    let nboards : Int
    var pairing: [pairData]  =  Array()
    
    init(_ players: Int, _ r: Int) {
        
        if(players%2 != 0){
            oddPlayers = true
            nPlayers = players + 1
        }
        else{
            oddPlayers = false
            nPlayers = players
        }
        rounds = nPlayers - 1
        nboards = nPlayers / 2
        //print("the number of players is \(oddPlayers ? nPlayers - 1 : nPlayers)")
        //print("Tournament will have \(rounds) rounds and \( nboards) nboards")
        
      let _ =  round(r)
        
        
    }
    
    
    private func filter(_ player:Int) -> Int {
        return (player < nPlayers) ? player : player - nPlayers + 1
    }
    
    func round(_ round:Int){
        
        
        if round < nPlayers{
            //print("Round Nº \(round)")
            
            
            for m in 1 ... nboards{
                var whites ,  blacks : Int
                if round % 2 != 0{
                    whites = filter(m + (round-1) / 2)
                    
                    blacks = (m==1) ? nPlayers : filter(nboards + (round - 1) / 2 + nboards - m  + 1)
                    
                }
                else{
                    
                    
                    whites = (m==1) ? nPlayers : filter(nboards + m + (round/2) - 1)
                    blacks = nboards + round/2 - m + 1
                    
                    
                    
                }
                pairing.append((board: m, white: whites, black: blacks))
                //print("\(whites) - \(blacks)")
                
            }
        }
        else{
            print("incorrect round's number")
        }
        
        
        
    }
}
