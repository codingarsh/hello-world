//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Arshpreet Multani on 2017-11-04.
//  Copyright © 2017 Arsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBAction func guessButton(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if numberTextField.text == diceRoll {
            
            resultTextField.text = "You're right"
        }
        else {
            
            resultTextField.text = "Wrong, it was \(diceRoll)."
        }
        
        
    }
    @IBOutlet var resultTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

