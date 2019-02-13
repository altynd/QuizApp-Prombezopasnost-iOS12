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
        
        questionsRightAnswersAppend()
        
        //задаются вопросы по функции
        otobragenie()
        restart()
        //задается наименование курса
        kursNomerOutlet.setTitle(kursNomer(), for: .normal)
        //задается номер билета
        biletNomerOutlet.setTitle(biletNomerText(), for: .normal)
 
    }
    
    @IBOutlet weak var progressBarLabel: UILabel!
    
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
        
        vibraniyOtvetArray [nomerVoprosa] = sender.tag
        points = otvetPlusOne(NomerVoprosa: nomerVoprosa)
        print("vibraniyOyvet \(vibraniyOtvetArray[nomerVoprosa])")
        print("points \(points) \n")
        sledushiyVopros()
        konecVoprosov()
        
    }
    @IBAction func nazadButton(_ sender: UIButton) {
        predidushiyVopros()
    }
    @IBAction func menuButton(_ sender: UIButton) {
        restart()
    }
    @IBAction func vperedButton(_ sender: UIButton) {
        sledushiyVopros()
    }

//    var answersArray = [""]
//    var rightAnswersArray = [0]
    var vibraniyOtvetArray = Array (repeating: 0 , count: (questionsStructArray.count + 1))
    
    var nomerVoprosa = 1
    let vsegoVoprosov = questionsStructArray.count
    var vsegoOtvetov = 0
    var rightAnswer = 0
    var points = 0
    
    // функция показывает верные ответы
    func otobragenie(){
        let otvechenoVoprosov = otvechenoVoprosovFunc()
        //прогрес
        let width = view.frame.size.width / CGFloat(vsegoVoprosov) * CGFloat(otvechenoVoprosov+1)
        progressBarLabel.frame.size.width = width
        
        if nomerVoprosa >= 1 && nomerVoprosa <= vsegoVoprosov{
            
            //индикация номера вопроса
            voprosNomerOutlet.setTitle("Вопрос №\(nomerVoprosa)/\(vsegoVoprosov)", for: .normal)
            
            //задаем правильный ответ в вопросе
            rightAnswer = rightAnswersArray[nomerVoprosa]
            
            print("nomerVoprosa \(nomerVoprosa)")
            print("rightAnswer \(rightAnswer)")
            
            // задаем текст вопроса  в кнопки
            voprosTextOutlet.text = questionsArray[nomerVoprosa]
            
            //количество ответов в вопросе
            vsegoOtvetov = answersArrayArray[nomerVoprosa-1].count
            
            //цикл для прогрузки ответов
            for i in 1...vsegoOtvetov{
                //инициализируем кнопку
                var button:UIButton = UIButton()
                button = view.viewWithTag(i) as! UIButton
                
                // задаем текст ответов в кнопки
                textOtvetov(i: i, btn:button)
                
                //задаем цвета кнопок для выбранных ответов
                cvetKnopki(btn: button)
                
                //ответ черным текстом
                cherniyAnswer(btn: button)
                
                //выключаем пустые кнопки
                vikluchaemKnopki(i: i, btn: button)
                
                //показывает правильный вариант
                //zeleniyAnswer(btn: button, nomerVoprosa: nomerVoprosa)
            }
        }
    }
    
    //функция прогрузки ответов в кнопки
    func textOtvetov(i:Int, btn:UIButton){
        btn.setTitle(answersArrayArray[nomerVoprosa - 1][i - 1], for: .normal)
    }
    
    //функция покраски кнопок для выбранных ответов
    func cvetKnopki (btn:UIButton){
        if vibraniyOtvetArray[nomerVoprosa] > 0 {
            btn.isUserInteractionEnabled = false
            btn.setTitleColor(UIColor.gray, for: .normal)
            voprosTextOutlet.textColor = UIColor.gray
            
        }
        else{
            btn.isUserInteractionEnabled = true
            btn.setTitleColor(UIColor.blue, for: .normal)
            voprosTextOutlet.textColor = UIColor.black
        }
    }
    
    //функция кнопки черного ответа
    func cherniyAnswer(btn:UIButton){
        if btn.tag == vibraniyOtvetArray[nomerVoprosa]{
            btn.setTitleColor(UIColor.black, for: .normal)
        }
    }
    
    //функция зеленого правильного ответа
    func zeleniyAnswer(btn:UIButton, nomerVoprosa : Int){
        if btn.tag == rightAnswersArray[nomerVoprosa]{
            btn.backgroundColor = UIColor.green
        }else{
            btn.backgroundColor = UIColor.clear
        }
    }
    
    //функция выключаем пустые кнопки
    func vikluchaemKnopki (i: Int, btn:UIButton){
        if answersArrayArray[nomerVoprosa - 1][i - 1] == ""{
            btn.isEnabled = false
        }
        else{
            btn.isEnabled = true
        }
    }
    
    //функция включения следующиего вопроса
    func sledushiyVopros(){
        if nomerVoprosa < vsegoVoprosov{
            nomerVoprosa += 1
            otobragenie()
        }
    }
    
    //функция включения предыдущего вопроса
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
    
    func restart(){
        vibraniyOtvetArray = [0,0,0,0,0,0]
        
        for i in 1...vsegoOtvetov{
            //инициализируем кнопку
            var button:UIButton = UIButton()
            button = view.viewWithTag(i) as! UIButton
            
            button.isUserInteractionEnabled = true
            button.setTitleColor(UIColor.blue, for: .normal)
            voprosTextOutlet.textColor = UIColor.black
        }
    }
    
    func konecVoprosov(){
        var num1 = 1
        var num2 = 1
        for i in 1...(vsegoVoprosov){
            num1 = num1 * vibraniyOtvetArray[i]
            num2 = num1 * num2
        }
        
        if num2 != 0{
            //print("ok")
            self.performSegue(withIdentifier: "SegueResult", sender: Any?.self)
            
        }
    }
    
    //передает информацию segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SegueResult"){
            let displayVC = segue.destination as! SecondViewController
            
            displayVC.points = points
            displayVC.vsegoVoprosov = vsegoVoprosov
        }
    }
    
    
    func otvechenoVoprosovFunc() -> Int{
        return vibraniyOtvetArray.filter({ $0 != 0 }).count - 1
    }
    
    func otvetPlusOne(NomerVoprosa:Int) -> Int {
        
        if vibraniyOtvetArray [nomerVoprosa] == rightAnswer {
            points += 1
        }
        return points
    }
    
    //массив вопросов
    //массив правильных ответов
    func questionsRightAnswersAppend() {
        for i in questionsStructArray {
            questionsArray.append(i.question)
            rightAnswersArray.append(i.rightAnswer)
            answersArrayArray.append(i.answersArray)
        }
    
    }
    
}


