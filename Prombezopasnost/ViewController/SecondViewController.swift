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
    
    override func viewDidLoad() {
        super.viewDidLoad()
                rezultati.text = "Правильных ответов: \(points ?? 0) из \(vsegoVoprosov ?? 0)\n\(result())"
    }
    
    @IBOutlet weak var rezultati: UILabel!
    
    func result()->String{
        points = points ?? 0
        vsegoVoprosov = vsegoVoprosov ?? 0
        if points! > 0 && points == vsegoVoprosov{
           return("\nОтличный результат.\nЭкзамен пройден.")
        } else if points! > 0 && points == (vsegoVoprosov! - 1){
            return("\nХороший результат.\nЭкзамен пройден.")
        }else{
            return("\n\nЭкзамен не пройден.")
        }
    }
    
}
