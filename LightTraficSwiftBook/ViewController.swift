//
//  ViewController.swift
//  LightTraficSwiftBook
//
//  Created by Денис Сташков on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var currentState: ColorLighter = .green
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    enum ColorLighter {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.frame.size.width = 100
        redLight.frame.size.height = 100
        redLight.layer.cornerRadius = 50
        redLight.alpha = 0.3
        
        
        yellowLight.frame.size.width = 100
        yellowLight.frame.size.height = 100
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.3
        
        greenLight.frame.size.width = 100
        greenLight.frame.size.height = 100
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = 0.3
        
        startButton.setTitle("Start", for: .normal)
        startButton.layer.cornerRadius = 20
    }
    
    private func changeColor() {
        switch currentState {
        case .red:
            currentState = .yellow
        case .yellow:
            currentState = .green
        case .green:
            currentState = .red
        }
        updateTrafficLight()
    }
    
    private func updateTrafficLight(){
        redLight.alpha = currentState == .red ? 1 : 0.3
        yellowLight.alpha = currentState == .yellow ? 1 : 0.3
        greenLight.alpha = currentState == .green ? 1 : 0.3
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
       
        changeColor()
        startButton.setTitle("Next", for: .normal)
       
        
    }

}

