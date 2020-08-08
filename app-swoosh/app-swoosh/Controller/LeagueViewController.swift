//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Gulnara Saimassay on 6/18/20.
//  Copyright © 2020 Gulnara Saimassay. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSkillVCSegue", sender: self)
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController{
            skillVC.playerSkillVC = player
        }
    }

}
