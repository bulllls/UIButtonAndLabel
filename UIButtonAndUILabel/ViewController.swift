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
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // скрываем label по умолчанию
        label.isHidden = true
        // меняем размер текста
        label.font = label.font.withSize(35)
        // меняем цвет текста
        label.textColor = UIColor.white
        
        //Добавляем текста в кнопку
        button.setTitle("Get result", for: .normal)
        // цвет текста кнопки
        button.setTitleColor(.blue, for: .normal)
        // цвет фона кнопки
        button.backgroundColor = .yellow
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        if label.isHidden {
            label.isHidden = false
            label.text = "Hello, world!"
            
            button.setTitle("Clear", for: UIControl.State.normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .red
        }else {
            label.isHidden = true
            
            button.setTitle("Get result", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .yellow
        }
    }
}

