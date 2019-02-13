//
//  FirstViewController.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 29/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Obuchenie.isEnabled = false
        Obuchenie.setTitleColor(UIColor.gray, for: .normal)
        Trenirovka.isEnabled = false
        Trenirovka.setTitleColor(UIColor.gray, for: .normal)
    }
    
    @IBOutlet weak var Obuchenie: UIButton!
    
    @IBOutlet weak var Trenirovka: UIButton!
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
