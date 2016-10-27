//
//  OverwatchHero.swift
//  Overwatch
//
//  Created by Arvin San Miguel on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

typealias Health = Int

protocol Weapon {
    func fire() -> String
    func heal() -> String
}

protocol OverwatchHero : Weapon, CustomStringConvertible {
    var name: HeroName { get set }
    var hitPoints: Health { get set }
    var heroType: HeroType { get }
    func produceHeroType() -> HeroType
    func produceInitialHitPoints() -> Health
}

extension OverwatchHero {
    func fire() -> String {
        switch self.heroType {
        case .offense: return "Offense: 👊🏼"
        case .defense: return "Defense: ✋🏽"
        case .support: return "Support: 👐🏽"
        case .tank: return "Tank: ✊🏽"
        }
    }
    
    func heal() -> String {
        switch self.heroType {
        case .offense: return "Heal: ✖️"
        case .defense: return "Heal: ✖️"
        case .tank: return "Heal: ✖️"
        case .support: return "Heal: ❤️"
        }
    }
}

extension OverwatchHero {
    
    func produceHeroType() -> HeroType {
        switch self.name {
        case .genji, .mcCree, .pharah, .reaper, .soldier76, .tracer: return HeroType.offense
        case .bastion, .hanzo, .junkrat, .mei, .torbjörn, .widowmaker: return HeroType.defense
        case .dva, .reinhardt, .roadhog, .winston, .zarya: return HeroType.tank
        case .ana, .lúcio, .mercy, .symmetra, .zenyatta: return HeroType.support
        }
    }
    
    func produceInitialHitPoints() -> Health {
        switch self.heroType {
        case .offense: return 250
        case .defense: return 250
        case .support: return 150
        case .tank: return 500
        }
    }
}

extension OverwatchHero {
    var description: String {
        
    return  "Name: \(self.name.description)\nType: \(self.heroType.description)\nAttack: \(self.fire())\nHeal: \(self.heal())\nHit Points: \(self.hitPoints)"
        
    }
}


