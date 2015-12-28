//
//  ViewController.swift
//  Autotune
//
//  Created by Erik Van Lankvelt on 12/28/15.
//  Copyright © 2015 Hippololamus. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textToSpeech(sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: textField.text!)
        myUtterance.rate = 0.3
        myUtterance.pitchMultiplier = 0.25
        myUtterance.volume = 1
        
        synth.speakUtterance(myUtterance)
    }

}

