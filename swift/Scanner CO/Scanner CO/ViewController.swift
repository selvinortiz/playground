//
//  ViewController.swift
//  Scanner CO
//
//  Created by Selvin Ortiz on 10/5/16.
//  Copyright © 2016 Selvin Ortiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let family = ["Selvin", "Penny", "Grayson", "Silas"]

    @IBAction func buttonTapped(_ sender: AnyObject) {
        self.view.backgroundColor = UIColor.red
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        indexFamily()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func indexFamily() {
        for member in self.indexFamily {
            let attributeSet =  CSSearchableAttributeSet(itemContentType: "kUTTypeItem")
            
        }
    }
}

