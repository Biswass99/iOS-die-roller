//
//  ViewController.swift
//  Die_Roller
//
//  Created by Salil Biswas on 1/29/19.
//  Copyright © 2019 user150447. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   // dieImage is an ImageView which contains the image of 1 face of a die
    @IBOutlet weak var dieImage: UIImageView!
    // dieResult is a label which contains the random number after each roll
    @IBOutlet weak var dieResult: UILabel!
    // connected to the roll button
    @IBAction func rollDie(_ sender: Any) {
        let randomNumber = arc4random_uniform(6) + 1
        // arc4random_uniform(6) returns an integer number between 0 and 5
        self.dieResult.text = String(randomNumber)
        switch randomNumber {
        case 1:
            self.dieImage.image = UIImage(named: "dice-1")
        case 2:
            self.dieImage.image = UIImage(named: "dice-2")
        case 3:
            self.dieImage.image = UIImage(named: "dice-3")
        case 4:
            self.dieImage.image = UIImage(named: "dice-4")
        case 5:
            self.dieImage.image = UIImage(named: "dice-5")
        case 6:
            self.dieImage.image = UIImage(named: "dice-6")
        default:
            return
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

