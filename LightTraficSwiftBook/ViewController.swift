//
//  ViewController.swift
//  LightTraficSwiftBook
//
//  Created by Денис Сташков on 21.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    private enum ColorLighter {
        case red
        case yellow
        case green
    }
    // MARK: - outlets
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    // MARK: - private properties
    private var currentState: ColorLighter = .green
    
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
      
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.alpha = 0.3
        
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        yellowLight.alpha = 0.3
    
        greenLight.layer.cornerRadius =  greenLight.frame.size.width / 2
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 20
    }
    // MARK: - IB action
    @IBAction func startButtonPressed(_ sender: Any) {
        changeColor()
        startButton.setTitle("Next", for: .normal)
    }
    
    // MARK: - private func
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
}
