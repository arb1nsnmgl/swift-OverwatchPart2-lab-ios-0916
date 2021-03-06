//
//  HeroAttributes.swift
//  Overwatch
//
//  Created by Arvin San Miguel on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


enum HeroName: CustomStringConvertible {
    var description: String {
        switch self {
        case .genji: return "Genji"
        case .mcCree: return "McCree"
        case .pharah: return "Pharah"
        case .reaper: return "Reaper"
        case .soldier76: return "Soldier 76"
        case .tracer: return "Tracer"
        case .bastion: return "Bastion"
        case .hanzo: return "Hanzo"
        case .junkrat: return "Junkrat"
        case .mei: return "Mei"
        case .torbjörn: return "Torbjörn"
        case .widowmaker: return "Widowmaker"
        case .dva: return "DVA"
        case .reinhardt: return "Reinhardt"
        case .roadhog: return "Roadhog"
        case .winston: return "Winston"
        case .zarya: return "Zarya"
        case .ana: return "Ana"
        case .lúcio: return "Lucio"
        case .mercy: return "Mercy"
        case .symmetra: return "Symmetra"
        case .zenyatta: return "Zenyatta"
        }
    }
    
    case genji, mcCree, pharah, reaper, soldier76, tracer, bastion, hanzo, junkrat, mei, torbjörn, widowmaker, dva, reinhardt, roadhog, winston, zarya, ana, lúcio, mercy, symmetra, zenyatta
    
    static func heroes(with type: HeroType) -> [HeroName] {
        switch type {
            
        case .offense: return [.genji, .mcCree, .pharah, .reaper, .soldier76, .tracer]
        case .defense: return [.bastion, .hanzo, .junkrat, .mei, .torbjörn, .widowmaker]
        case .tank: return [.dva, .reinhardt, .roadhog, .winston, .zarya]
        case .support: return [.ana, .lúcio, .mercy, .symmetra, .zenyatta]
            
        }
    }
    
}

enum HeroType : CustomStringConvertible {
    var description: String {
        switch self {
        case .offense: return "Offense: 💥"
        case .defense: return "Defense: 🛡"
        case .support: return "Support: 🚑"
        case .tank: return "Tank: 🐼"
        }
    }
    
    case offense, defense, support, tank
    
    static var allTypes : [HeroType] { return [.offense, .defense, .tank, .support] }
    
}






   
