//
//  Character.swift
//  rpgoop
//
//  Created by Preeti Patel on 18/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        
        get {
            return _attackPower
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if _hp <= 0 {
                return false
            }
            else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._attackPower = attackPower
        self._hp = startingHp
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        
        return true
    }
}
