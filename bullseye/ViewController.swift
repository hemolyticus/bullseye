//
//  ViewController.swift
//  bullseye
//
//  Created by Mel John del Barrio on 15/05/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var targetLabel: UILabel!
    var currentValue = 0
    var targetValue = 0
    
    @IBAction func showAlert(_ sender: Any) {
        print("The value of the slider is: \(currentValue)")
    }
    
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        currentValue = lroundf(sender.value)
        showAlert(sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNewRound()
    {
        targetValue = Int(arc4random_uniform(100)) + 1
        currentValue = 50
        slider.value = 50
        
    }
    
    func updateLabels()
    {
      targetLabel.text = String(targetValue)
    }


}

