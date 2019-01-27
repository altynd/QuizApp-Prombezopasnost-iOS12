//
//  ViewController.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 07/11/2018.
//  Copyright © 2018 Altyn Dmitry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBOutlet weak var kursNomer: UIButton!
    @IBOutlet weak var biletNomer: UIButton!
    @IBOutlet weak var voprosNomer: UIButton!
    @IBOutlet weak var voprosText: UILabel!
    @IBOutlet var otvetText: [UIButton]!

   
    @IBAction func viborKurs(_ sender: UIButton) {
    }
    @IBAction func viborBilet(_ sender: UIButton) {
    }
    @IBAction func viborVopros(_ sender: UIButton) {
    }
    @IBAction func otvetKnopki(_ sender: UIButton) {
        if sender.tag == praviniyOtvet{
            print("Правильный ответ")
        } else{
            print("Не правильный ответ")
        }
        
        if nomerVoprosa != vsegoVoprosov - 1{
            newQuestion()
        }
    }
    @IBAction func nazad(_ sender: UIButton) {
    }
    @IBAction func menu(_ sender: UIButton) {
    }
    @IBAction func vpered(_ sender: UIButton) {
    }
    
    //
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    // задаем значения для первого вопроса
    var nomerVoprosa = 0
    let vsegoVoprosov = voprosiArray.count
    var praviniyOtvet = pravelniyOtvetIndexArray[0]
    
    // функция показывает верные ответы
    func newQuestion(){
        
        // задаем текст вопроса в лейбл
        voprosText.text = voprosiArray[nomerVoprosa]
        
        
        var button:UIButton = UIButton()
        let vsegoOtvetov = otvetiArray[nomerVoprosa].count
        
        for i in 1...(vsegoOtvetov)
        {
            // задаем текст ответов в кнопки
            button = view.viewWithTag(i) as! UIButton
            button.setTitle(otvetiArray[nomerVoprosa][i-1], for: .normal)
            
            //указваем правильный ответ для каждого вопроса
            
//
//            if (i == rightAnswerPlacement){
//                button.setTitle(answers[currentQuestion][i-1], for: .normal)
//            } else{
//                button.setTitle("", for: .normal)
//            }
//            currentQuestion += 1
        }
    }
    
}

