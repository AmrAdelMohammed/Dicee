//
//  ViewController.swift
//  Dicee
//
//  Created by Amr on 2/8/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceeArray = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDicee()        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDicee()
    }
    func updateDicee()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named : diceeArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named : diceeArray[randomDiceIndex2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDicee()
    }
    
}

