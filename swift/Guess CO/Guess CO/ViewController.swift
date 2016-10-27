//
//  ViewController.swift
//  Guess CO
//
//  Created by Selvin Ortiz on 10/6/16.
//  Copyright © 2016 Selvin CO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var toGuess = arc4random_uniform(6)
    
    @IBOutlet weak var textGuess: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func buttonGuessTapped(_ sender: AnyObject) {
        print("Hello World!")
        print(toGuess)

        if (Int(toGuess) == Int(textGuess.text!)) {
            labelResult.text = "Right!"
        } else {
            labelResult.text = "Try again!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

