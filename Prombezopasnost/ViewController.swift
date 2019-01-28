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
        
        //задаются вопросы по функции
        otobragenie()
        //задается наименование курса
        kursNomerOutlet.setTitle(kursNomer(), for: .normal)
        //задается номер билета
        biletNomerOutlet.setTitle(biletNomerText(), for: .normal)
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
        
        //print("Выбранный ответ \(vibraniyOtvet [nomerVoprosa])")
        
        //if sender.tag == praviniyOtvet{
        //print("Правильный ответ")
        //} else{
        //print("Не правильный ответ")
        //}
        vibraniyOtvetArray [nomerVoprosa] = sender.tag
        otobragenie()
        sledushiyVopros()
        
    }
    @IBAction func nazadButton(_ sender: UIButton) {
        predidushiyVopros()
    }
    
    @IBAction func menuButton(_ sender: UIButton) {
    }
    
    @IBAction func vperedButton(_ sender: UIButton) {
        sledushiyVopros()
    }
    
    // задаем значения для первого вопроса
    var kol_voPravilnihOtvetov = 0
    var kol_voNePravilnihOtvetov = 0
    var nomerVoprosa = 1
    let vsegoVoprosov = voprosiArray.count
    var vsegoOtvetov = 0
    var praviniyOtvet = pravelniyOtvetIndexArray[0]
    
    
    // функция показывает верные ответы
    func otobragenie(){
        
        print("Номер вопроса \(nomerVoprosa)")
        
        if nomerVoprosa >= 1 && nomerVoprosa <= vsegoVoprosov{
            
            //индикация номера вопроса
            voprosNomerOutlet.setTitle("Вопрос №\(nomerVoprosa)/\(vsegoVoprosov)", for: .normal)
            
            //задаем правильный ответ
            praviniyOtvet = pravelniyOtvetIndexArray[nomerVoprosa - 1]
            
            // задаем текст вопроса
            voprosTextOutlet.text = voprosiArray[nomerVoprosa - 1]
            
            var button:UIButton = UIButton()
            //количество ответов в вопросе
            vsegoOtvetov = otvetiArray[nomerVoprosa - 1].count
            
            //цикл для ответов
            for i in 1...vsegoOtvetov{
                // задаем текст ответов в кнопки
                button = view.viewWithTag(i) as! UIButton
                button.setTitle(otvetiArray[nomerVoprosa - 1][i - 1], for: .normal)
                
                //выключаем пустые кнопки
                if otvetiArray[nomerVoprosa - 1][i - 1] == ""{
                    button.isHidden = true // TODO: сделать отключение кнопки вместо черного
                }
                else{
                    button.isHidden = false
                }
                
                //задаем цвета кнопок
                if vibraniyOtvetArray[nomerVoprosa] > 0 {
                    button.isEnabled = false
                    button.setTitleColor(UIColor.gray, for: .normal)
                    voprosTextOutlet.textColor = UIColor.gray
                }
                else{
                    button.isEnabled = true
                    button.setTitleColor(UIColor.blue, for: .normal)
                    voprosTextOutlet.textColor = UIColor.black
                    //if i == vibraniyOtvetArray[nomerVoprosa]{
                    //button.backgroundColor = UIColor.black
                }
                
                //черный цвет для выбранного ответа
                if button.tag == vibraniyOtvetArray[nomerVoprosa]{
                    button.setTitleColor(UIColor.black, for: .normal)
                }
            }
        }
    }
    
    func sledushiyVopros(){
        if nomerVoprosa < vsegoVoprosov{
            nomerVoprosa += 1
            otobragenie()
        }
    }
    
    func predidushiyVopros(){
        if nomerVoprosa > 1{
            nomerVoprosa -= 1
            otobragenie()
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
    
}

