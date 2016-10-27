//
//  ViewController.swift
//  Dog CO
//
//  Created by Selvin Ortiz on 10/5/16.
//  Copyright © 2016 Selvin CO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtYears: UITextField!
    @IBAction func btnCalculateTapped(_ sender: AnyObject) {
        let years = Int(txtYears.text!)! * 7
        
        lblResult.text = String(years)
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

