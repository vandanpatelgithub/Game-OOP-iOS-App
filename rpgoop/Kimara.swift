//
//  Kimara.swift
//  rpgoop
//
//  Created by Preeti Patel on 18/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide","Kimara Venom","Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attemptAttack(attackPower)
        } else {
            return false
        }
    }
}
