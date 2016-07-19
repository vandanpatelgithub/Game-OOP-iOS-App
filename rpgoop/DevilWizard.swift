//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Preeti Patel on 18/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}
