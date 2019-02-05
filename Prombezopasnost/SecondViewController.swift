//
//  SecondViewController.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 28/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController/*ViewController*/ {
    
    let vc = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                rezultati.text = "Правильных ответов: \(vc.points) из \(vc.vsegoVoprosov)"
        print(vc.points)
    }
    
    @IBOutlet weak var rezultati: UILabel!
    
    
    
}
