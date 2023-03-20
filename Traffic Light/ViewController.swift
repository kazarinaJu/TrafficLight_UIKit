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
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = lightIsOn
            return
        }
        
        switch currentColor {
        case .red:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentColor = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentColor = .green
        case .green:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentColor = .red
        }
    }
}

extension ViewController {
    private enum TrafficLightColors {
        case red, yellow, green
    }
}

