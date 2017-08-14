//
//  ViewController.swift
//  Dicee
//
//  Created by Amit Biswas on 8/13/17.
//  Copyright © 2017 Amit Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    
    let diceImageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceeImageView1:
    UIImageView!
   
    
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPreesed(_ sender: UIButton) {
    
    randomDiceeIndex1 = Int(arc4random_uniform(6))
    randomDiceeIndex2 = Int(arc4random_uniform(6))
        
    
        diceeImageView1.image = UIImage(named: diceImageArray[randomDiceeIndex1])
        
    }
    
  

}

