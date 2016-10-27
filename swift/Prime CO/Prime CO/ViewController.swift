//
//  ViewController.swift
//  Prime CO
//
//  Created by Selvin Ortiz on 10/6/16.
//  Copyright © 2016 Selvin CO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNumber: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBAction func buttonSubmitTapped(_ sender: AnyObject) {
        var result: String
        var color = UIColor.green
        if let input = Int(textNumber.text!) {
            if isPrime(num: input) {
                result = "\(input) is a prime number"
            } else {
                color = UIColor.yellow
                result = "\(input) is not a prime number"
            }
        } else {
            color = UIColor.red
            result = "Please provide a whole number"
        }

        labelResult.text = result
        labelResult.textColor = color
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func isPrime(num:Int) -> Bool {
        if num == 1 {
            return true
        }
        
        if num == 2 {
            return false
        }
        
        var i = 2
        
        while i < num {
            if num % i == 0 {
                return false
            }
            i += 1
        }
        
        return true
    }
}

