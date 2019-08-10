//
//  ViewController.swift
//  UIButtonAndUILabel
//
//  Created by Ruslan on 8/10/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.font = label.font.withSize(35)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .yellow
        }
  
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        button.isHidden = false
        
        if sender.titleLabel?.text == "Action 1" {
            label.text = "Hello, World!"
            label.textColor = .yellow
        } else if sender.titleLabel?.text == "Action 2" {
            label.text = "Hi, there!"
            label.textColor = .blue
        }
    }
}

