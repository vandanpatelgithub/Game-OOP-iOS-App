//
//  Player.swift
//  rpgoop
//
//  Created by Preeti Patel on 18/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    func addItemToInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        self._name = name
    }
}