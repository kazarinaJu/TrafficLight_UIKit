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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        for lightView in lightViews {
            lightView.layer.cornerRadius = lightView.frame.size.width/2
        }
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
    }
    
}

