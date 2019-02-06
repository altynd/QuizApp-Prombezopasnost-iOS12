//
//  SecondViewController.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 28/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController/*ViewController*/ {
    
    var points: Int?
    var vsegoVoprosov : Int?
    
    let vc = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                rezultati.text = "Правильных ответов: \(points ?? 0) из \(vsegoVoprosov ?? 0)"
    }
    
    @IBOutlet weak var rezultati: UILabel!
    
    
    
}
