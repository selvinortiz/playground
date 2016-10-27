//
//  ViewController.swift
//  Timer CO
//
//  Created by Selvin Ortiz on 10/7/16.
//  Copyright © 2016 Selvin CO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time  = 300
    var timer = Timer()

    @IBOutlet weak var qrCodeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func playButtonTapped(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimerTick), userInfo: nil, repeats: true)

    }
    @IBAction func pauseButtonTapped(_ sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func rewindButtonTapped(_ sender: AnyObject) {
        if (time > 10) {
            updateTimeAndLabel(inSeconds: time - 10)
        }
    }
    @IBAction func forwardButtonTapped(_ sender: AnyObject) {
        updateTimeAndLabel(inSeconds: time + 10)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTimeAndLabel(inSeconds: time)
        // Do any additional setup after loading the view, typically from a nib.
    
        if let image = generateQRCode(from: "612-424-0013") {
            // qrCodeImageView.image = image
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func processTimerTick() {
        updateTimeAndLabel(inSeconds: time - 1)
    }

    func updateTimeAndLabel(inSeconds: Int) {
        if (inSeconds >= 0) {
            time = inSeconds
            timeLabel.text = String(inSeconds)
        }
    }
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.applying(transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
}

