//
//  ViewController.swift
//  rpgoop
//
//  Created by Preeti Patel on 18/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHPLabel: UILabel!
    
    @IBOutlet weak var enemyHPLabel: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    @IBAction func onChestButtonPressed(sender: UIButton) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackButtonPressed(sender: UIButton) {
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHPLabel.text = "\(enemy.hp) HP"
        }
        else {
            printLabel.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHPLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Vandan", hp: 110, attackPower: 20)
        playerHPLabel.text = "\(player.hp) HP"
        
        generateRandomEnemy()
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPower: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPower: 15)
        }
        
        enemyImage.hidden = false
    }
}

