//
//  ViewController.swift
//  newTrafficLight
//
//  Created by Владимир Рубис on 20.05.2021.
//

import UIKit
enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet var allLight: [UIView]!
   
    var currentLight = CurrentLight.red
    let isOn: CGFloat = 1.0
    let isOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0..<allLight.count {
        allLight[index].layer.masksToBounds = true
        allLight[index].layer.cornerRadius =
        allLight[index].frame.width/2
        }
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = isOn
            yellowLight.alpha = isOff
            greenLight.alpha = isOff
            currentLight = .yellow
            
        case .yellow:
            redLight.alpha = isOff
            yellowLight.alpha = isOn
            greenLight.alpha = isOff
            currentLight = .green
        case .green:
            redLight.alpha = isOff
            yellowLight.alpha = isOff
            greenLight.alpha = isOn
            currentLight = .red
        }
    }
    
    
    
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//        for index in 0..<allLight.count {
//        allLight[index].layer.masksToBounds = true
//        allLight[index].layer.cornerRadius =
//        allLight[index].frame.width/2
//        }
//    }

}

