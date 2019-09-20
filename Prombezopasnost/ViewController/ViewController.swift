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
        kursNomerOutlet.setTitle(indexOfKurses, for: .normal)
        //задается номер билета
        
 
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
        
        vibraniyOtvetArray [currentQuestion] = sender.tag
        points = otvetPlusOne(NomerVoprosa: currentQuestion)
        print("vibraniyOyvet \(vibraniyOtvetArray[currentQuestion])")
        print("points \(points) \n")
//        otobragenie()
        sledushiyVopros()
        
    
        
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

    var indexOfKurses : String = ""
    
    //для выбора режима обучени/экзамен/тренировка
    var isObuchenie = false
    var isTrenirovka = false
    var isExam = false
    
    var vibraniyOtvetArray = Array (repeating: 0 , count: (questionsStructArray.count))
    
    var currentQuestion = 1
    let countOfAllQuestions = questionsStructArray.count
    var countOfQuestions = 10
    var rejim = 0
    var numberOfAnswersInQuestion = 0
    var rightAnswer = 0
    var points = 0
    

    
    // функция показывает верные ответы
    func otobragenie(){
        biletNomerOutlet.setTitle(biletNomerText(), for: .normal)
        
        countOfQuestions = rejim == 3 ? questionsStructArray.count : countOfQuestions
        
        
        let otvechenoVoprosov = otvechenoVoprosovFunc()
        //прогрес
        let width = (view.frame.size.width)/CGFloat(countOfQuestions) * CGFloat(otvechenoVoprosov)
        progressBarLabel.frame.size.width = width
        
        if currentQuestion >= 1 && currentQuestion <= countOfQuestions{
            
            //индикация номера вопроса
            voprosNomerOutlet.setTitle("Вопрос №\(currentQuestion)/\(countOfQuestions)", for: .normal)
            
            //задаем правильный ответ в вопросе
            rightAnswer = rightAnswersArray[currentQuestion]
            
            print("nomerVoprosa \(currentQuestion)")
            print("rightAnswer \(rightAnswer)")
            
            // задаем текст вопроса  в кнопки
            voprosTextOutlet.text = questionsArray[currentQuestion]
            
            //количество ответов в вопросе
            numberOfAnswersInQuestion = answersArrayArray[currentQuestion-1].count
            
            //цикл для прогрузки ответов
            for i in 1...numberOfAnswersInQuestion{
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
                
                if isObuchenie{
                //показывает правильный вариант
                zeleniyAnswer(btn: button, nomerVoprosa: rightAnswer)
                }
            }
        }
        konecVoprosov(otvechenoVoprosov: otvechenoVoprosov)
    }
    
    //функция прогрузки ответов в кнопки
    func textOtvetov(i:Int, btn:UIButton){
        if answersArrayArray[currentQuestion - 1][i - 1] != ""{
        btn.setTitle(answersArrayArray[currentQuestion - 1][i - 1], for: .normal)
            btn.isHidden = false
        }else{
            btn.isHidden = true
        }
    }
    
    //функция покраски кнопок для выбранных ответов
    func cvetKnopki (btn:UIButton){
        if vibraniyOtvetArray[currentQuestion] > 0 {
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
        if btn.tag == vibraniyOtvetArray[currentQuestion]{
            btn.setTitleColor(UIColor.black, for: .normal)
        }
    }
    
    //функция зеленого правильного ответа
    func zeleniyAnswer(btn:UIButton, nomerVoprosa : Int){
        if btn.tag == rightAnswer{
            btn.backgroundColor = UIColor.green
        }else{
            btn.backgroundColor = UIColor.clear
        }
    }
    
    //функция выключаем пустые кнопки
    func vikluchaemKnopki (i: Int, btn:UIButton){
        if answersArrayArray[currentQuestion - 1][i - 1] == ""{
            btn.isEnabled = false
        }
        else{
            btn.isEnabled = true
        }
    }
    
    //функция включения следующиего вопроса
    func sledushiyVopros(){
        if currentQuestion < countOfQuestions{
            currentQuestion += 1
            otobragenie()
        } else if currentQuestion == countOfQuestions{
            otobragenie()
        }
    }
    
    //функция включения предыдущего вопроса
    func predidushiyVopros(){
        if currentQuestion > 1{
            currentQuestion -= 1
            otobragenie()
        }
    }
    
    //функция номера билета
    func biletNomerText() -> String{
        let biletNomerText: Int
        switch currentQuestion {
        case 1...10:
            biletNomerText = 1
        case 11...20:
            biletNomerText = 2
        case 21...30:
            biletNomerText = 3
        case 31...40:
            biletNomerText = 4
        case 41...50:
            biletNomerText = 5
        case 51...60:
            biletNomerText = 6
        case 61...70:
            biletNomerText = 7
        case 71...80:
            biletNomerText = 8
        case 81...90:
            biletNomerText = 9
        case 99...100:
            biletNomerText = 10
        case 101...110:
            biletNomerText = 11
        case 111...120:
            biletNomerText = 12
        case 121...130:
            biletNomerText = 13
        case 131...140:
            biletNomerText = 14
        case 141...150:
            biletNomerText = 15
        case 151...160:
            biletNomerText = 16
        case 161...170:
            biletNomerText = 17
        case 171...180:
            biletNomerText = 18
        case 181...190:
            biletNomerText = 19
        case 191...200:
            biletNomerText = 20
        case 201...210:
            biletNomerText = 21
        case 211...220:
            biletNomerText = 22
        case 221...230:
            biletNomerText = 23
        case 231...240:
            biletNomerText = 24
        case 241...250:
            biletNomerText = 25
        case 251...260:
            biletNomerText = 26
        default:
            biletNomerText = 1
        }
        return "Билет №\(biletNomerText)"
    }

    //!!!!!
    func restart(){
        vibraniyOtvetArray = Array (repeating: 0 , count: (questionsStructArray.count + 1))
        
        for i in 1...numberOfAnswersInQuestion{
            //инициализируем кнопку
            var button:UIButton = UIButton()
            button = view.viewWithTag(i) as! UIButton
    
            button.isUserInteractionEnabled = true
            button.setTitleColor(UIColor.blue, for: .normal)
            voprosTextOutlet.textColor = UIColor.black
        }
    }
    
    func konecVoprosov(otvechenoVoprosov: Int){
        if otvechenoVoprosov == countOfQuestions {
            self.performSegue(withIdentifier: "SegueResult", sender: Any?.self)
        }
    }
    
    //передает информацию segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SegueResult"){
            let displayVC = segue.destination as! SecondViewController
            
            displayVC.points = points
            displayVC.vsegoVoprosov = countOfQuestions
        }
    }
    
    func otvechenoVoprosovFunc() -> Int{
        return vibraniyOtvetArray.filter({ $0 != 0 }).count
    }
    
    func otvetPlusOne(NomerVoprosa:Int) -> Int {
        if vibraniyOtvetArray [currentQuestion] == rightAnswer {
            points += 1
        }
        return points
    }
    
    //массив базы вопросов
    //массив базы правильных ответов
    func questionsRightAnswersAppend() {
        for i in questionsStructArray {
            questionsArray.append(i.question)
            rightAnswersArray.append(i.rightAnswer!)
            answersArrayArray.append(i.answersArray as? [String] ?? [""])
        }
    
    }
    
}


