//
//  SkillViewController.swift
//  app-swoosh
//
//  Created by Gulnara Saimassay on 6/18/20.
//  Copyright © 2020 Gulnara Saimassay. All rights reserved.
//

import UIKit

class SkillViewController: UIViewController {
    
    var playerSkillVC: Player!

    @IBOutlet weak var finishBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(playerSkillVC.desiredLeague!)
        
        playerSkillVC = Player()
        
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        playerSkillVC.skill = "Beginner"
        finishBtn.isEnabled = true
    }
    
    @IBAction func onBalllerTapped(_ sender: Any) {
        playerSkillVC.skill = "Baller"
        finishBtn.isEnabled = true
    }
}
