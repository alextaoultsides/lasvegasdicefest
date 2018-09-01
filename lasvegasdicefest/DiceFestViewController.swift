//
//  ViewController.swift
//  lasvegasdice
//
//  Created by atao1 on 8/30/18.
//  Copyright © 2018 atao. All rights reserved.
//

import UIKit

class DiceFestViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImage()
    }
    func randNum() -> Int {
        return Int.random(in: 1...6)
        
    }
    
    func dicePicker() -> UIImage{
        let num = randNum()
        return UIImage(named: "dice\(num)")!
    }
    
    func diceImage() {
        diceImageView1.image = dicePicker()
        diceImageView2.image = dicePicker()
    }
    
    @IBAction func rollButton(_ sender: Any) {
        diceImage()
        
    }
    
}

