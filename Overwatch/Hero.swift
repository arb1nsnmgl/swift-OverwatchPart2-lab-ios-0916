//
//  Hero.swift
//  Overwatch
//
//  Created by Arvin San Miguel on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit

struct Hero : OverwatchHero {
    
    var name: HeroName
    var hitPoints: Health = 0
    var heroType: HeroType { return produceHeroType() }
    
    var image: UIImage { return produceButtonImage() }
    var profileImage: UIImage { return produceProfileImage() }
    
    init(name: HeroName) {
        self.name = name
        self.hitPoints = produceInitialHitPoints()
    }
    
    func produceButtonImage() -> UIImage {
        return UIImage(named: "\(self.name.description)")!
    }
    
    func produceProfileImage() -> UIImage {
        return UIImage(named: "\(self.name.description)Profile")!
    }
    
}

