//
//  ViewController.swift
//  Traffic Light
//
//  Created by Юлия Ястребова on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightViews: [UIView]!
    @IBOutlet var startButton: UIButton!
    
    private enum TrafficLightColors {
            case red, yellow, green
        }
        
    private var currentColor:TrafficLightColors = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        for lightView in lightViews {
            lightView.layer.cornerRadius = lightView.frame.width/2
        }
    }

    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            lightViews[0].alpha = 1
            return
        }
        
        switch currentColor {
        case .red:
            lightViews[0].alpha = 0.3
            lightViews[1].alpha = 1
            currentColor = .yellow
        case .yellow:
            lightViews[1].alpha = 0.3
            lightViews[2].alpha = 1
            currentColor = .green
        case .green:
            lightViews[2].alpha = 0.3
            lightViews[0].alpha = 1
            currentColor = .red
        }
        
        }
    
}

