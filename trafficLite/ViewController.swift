//
//  ViewController.swift
//  trafficLite
//
//  Created by Светлана Сафонова on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowWiew: UIView!
    
    @IBOutlet var greenWiew: UIView!
    @IBOutlet var trafficButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 0.5
        redView.alpha = 0.3
        yellowWiew.layer.cornerRadius = 0.5
        yellowWiew.alpha = 0.3
        greenWiew.layer.cornerRadius = 0.5
        greenWiew.alpha = 0.3
        
        trafficButton.layer.cornerRadius = 0.2
        
    }

    @IBAction func pushButton(_ sender: Any) {
        trafficButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowWiew.alpha = 1
        }else if yellowWiew.alpha == 1{
            yellowWiew.alpha = 0.3
            greenWiew.alpha = 1
        } else {
            greenWiew.alpha = 0.3
            redView.alpha = 1
            
        }
    }
    
}

