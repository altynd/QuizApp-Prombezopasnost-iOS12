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

    @IBOutlet weak var kursNomerOutlet: UIButton!
    @IBOutlet weak var biletNomerOutlet: UIButton!
    @IBOutlet weak var voprosNomerOutlet: UIButton!
    @IBOutlet weak var voprosTextOutlet: UILabel!
    @IBOutlet var otvetTextOutletArray: [UIButton]!

   
   
    @IBAction func viborKursButton(_ sender: UIButton) {
    }
    @IBAction func viborBiletButton(_ sender: UIButton) {
    }
    @IBAction func viborVoprosButton(_ sender: UIButton) {
    }
    @IBAction func otvetKnopkiButton(_ sender: UIButton) {
        if sender.tag == praviniyOtvet{
            print("Правильный ответ")
        } else{
            print("Не правильный ответ")
        }
        sledushiyVopros()

    }
    @IBAction func nazadButton(_ sender: UIButton) {
    }
    @IBAction func menuButton(_ sender: UIButton) {
    }
    @IBAction func vperedButton(_ sender: UIButton) {
    }
    
    //Первый экран
    override func viewDidAppear(_ animated: Bool) {
        //задаются вопросы по функции
        sledushiyVopros()
        //задается наименование курса
        kursNomerOutlet.setTitle(kursNomer(), for: .normal)
        //задается номер билета
        biletNomerOutlet.setTitle(biletNomerText(), for: .normal)
    }
    
    // задаем значения для первого вопроса
    var nomerVoprosa = 1
    let vsegoVoprosov = voprosiArray.count
    var praviniyOtvet = pravelniyOtvetIndexArray[0]
    var vsegoOtvetovFunc = 0
    
    // функция показывает верные ответы
    func sledushiyVopros(){
        
        //проверяем по количеству вопросов
        if nomerVoprosa <= vsegoVoprosov {
            
            //индикация номера вопроса
            voprosNomerOutlet.setTitle("Вопрос №\(nomerVoprosa)/\(vsegoVoprosov)", for: .normal)
            
            //задаем правильный ответ
            praviniyOtvet = pravelniyOtvetIndexArray[nomerVoprosa - 1]
            
            // задаем текст вопроса
            voprosTextOutlet.text = voprosiArray[nomerVoprosa - 1]
        
            var button:UIButton = UIButton()
            let vsegoOtvetov = otvetiArray[nomerVoprosa - 1].count
            vsegoOtvetovFunc = vsegoOtvetov
        
            for i in 1...(vsegoOtvetov){
                // задаем текст ответов в кнопки
                button = view.viewWithTag(i) as! UIButton
                button.setTitle(otvetiArray[nomerVoprosa - 1][i - 1], for: .normal)
            }
       
            // следующий вопрос
            nomerVoprosa += 1
        } else{
            // TODO: сделать новый ViewController с результатами теста
        endResult()
        }

    }
    
    //функция наименоваия курса
    func kursNomer() -> String{
        let kursNomer = "А.1. Основы промышленной безопасности"
        return kursNomer
    }
  
    //функция номера билета
    func biletNomerText() -> String{
    let biletNomer = 1
    let biletNomerText = "Билет №\(biletNomer)"
    return biletNomerText
    }
    
    func endResult(){
    // обнуляем текст вопроса
    voprosTextOutlet.text = ""

    var button:UIButton = UIButton()


    for i in 1...(vsegoOtvetovFunc){
    // задаем текст ответов в кнопки
    button = view.viewWithTag(i) as! UIButton
    button.setTitle("", for: .normal)
    }
        
    }
}

