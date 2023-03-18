//
//  ViewController.swift
//  Traffic Light
//
//  Created by Юлия Ястребова on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentColor:TrafficLightColors = .red
    
    private enum TrafficLightColors {
            case red, yellow, green
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }

    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
            return
        }
        
        switch currentColor {
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentColor = .yellow
        case .yellow:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentColor = .green
        case .green:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentColor = .red
        }
        
        }
    
}

