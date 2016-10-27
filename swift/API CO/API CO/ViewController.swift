//
//  ViewController.swift
//  API CO
//
//  Created by Selvin Ortiz on 10/10/16.
//  Copyright © 2016 Selvin CO. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    var url = "https://www.apilayer.net/api/live?format=1&currencies={currencies}&access_key=4b38eef5f78e1202ea1cd36a3c75f62d"
    var json: JSON = JSON.null

    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var exchangeRateLabel: UILabel!
    @IBOutlet weak var exchangeButton: UIButton!
    @IBOutlet weak var currencyPickerView: UIPickerView!

    @IBAction func exchangeButtonTapped(_ sender: AnyObject) {
        exchangeButton.setTitle("Loading...", for: .normal)
        displayExchangeRate()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Look into Argo (JSON), Swish (Networking)
    }

    func displayExchangeRate() {
        let req = URL(string: url.replacingOccurrences(of: "{currencies}", with: currencyTextField.text!.uppercased()))

        let task = URLSession.shared.dataTask(with: req!, completionHandler: { (data, response, error) in
            if error != nil {
                print(error)
            } else {
                self.json = JSON(data: data!)

                let key = "USD{currencies}".replacingOccurrences(of: "{currencies}", with: self.currencyTextField.text!)
                if let rate = self.json["quotes"][key.uppercased()].double {
                    DispatchQueue.main.async {
                        self.exchangeButton.setTitle("USD /GTQ", for: .normal)
                        self.exchangeRateLabel.text = String(format: "%.4f", rate)
                    }
                }

                /**
                 do {
                 let parsedData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:Any]
                 
                 let dictionary = parsedData as [String: Any]
                 
                 if let quotes = dictionary["quotes"] as? [String: Any] {
                 print("------------")
                 print(quotes["USDGTQ"]!)
                 print("------------")
                 
                 
                 let rate = quotes["USDGTQ"] as! Double
                 
                 self.exchangeRateLabel.text = String(rate)
                 
                 }
                 
                 } catch let error as NSError {
                 print(error)
                 }
                 */
            }
            
        });

        task.resume()
    }
}

