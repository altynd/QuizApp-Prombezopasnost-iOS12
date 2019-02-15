//
//  Questions.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 27/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import Foundation


var questionsArray = [""]
var answersArray = [String?]()
var answersArrayArray = [[String]]()
var rightAnswersArray = [0]

// ответы

struct QuestionsA1 {
    var question : String
    var answer1 : String
    var answer2 : String
    var answer3 : String
    var answer4 : String
    var answer5 : String
    var rightAnswer : Int?
    var answersArray : [String?]
    var i : String?
    
    init(question:String = "",
         answer1 : String = "",
         answer2 : String = "",
         answer3 : String = "",
         answer4 : String = "",
         answer5 : String = "",
         rightAnswer : Int? = nil,
         answersArray : [String?] = [nil],
         i : String? = nil)
        
    {
        self.question=question
        self.answer1=answer1
        self.answer2=answer2
        self.answer3=answer3
        self.answer4=answer4
        self.answer5=answer5
        self.rightAnswer=rightAnswer
        self.i = i
    self.answersArray=[self.answer1,self.answer2,self.answer3,self.answer4,self.answer5]

        
    }
}

var questionsStructArray : [QuestionsA1] = [
    question1,
    question2,
    question3,
//    question4,
//    question5
]

//Сюда добавляем вопросы с ответами

let question1 = QuestionsA1(
    question: "Какие нормативные документы не могут приниматься по вопросам промышленной безопасности? ",
    answer1: "А) Федеральные законы. ",
    answer2: "Б) Нормативные правовые акты Правительства Российской Федерации. ",


    rightAnswer: 4,
    i : "п.1 ст.4 Федерального закона от 21.07.97 N 116-ФЗ \"О промышленной безопасности опасных производственных объектов\"")

let question2 = QuestionsA1(
    question: " Что является основной целью Федерального закона от 21 июля 1997 г. № 116-ФЗ «О промышленной безопасности опасных производственных объектов»? ",
    answer1: " А) Ликвидация чрезвычайных ситуаций, возникших в результате техногенной аварии. ",
    answer2: " Б) Снижение вероятности аварий на опасном производственном объекте и, как следствие, снижение уровня загрязнения окружающей среды при эксплуатации опасных производственных объектов. ",
    answer3: " В) Предупреждение аварий на опасных производственных объектах и обеспечение готовности эксплуатирующих опасные производственные объекты юридических лиц и индивидуальных предпринимателей к локализации и ликвидации последствий указанных аварий. ",
    answer4: " Г) Установление порядка расследования и учета несчастных случаев на опасном производственном объекте. ",

    rightAnswer: 3,
    i : " абз.1 преамбулы к Федеральному закону от 21.07.97 N 116-ФЗ \"О промышленной безопасности опасных производственных объектов\"" )

let question3 = QuestionsA1(
    question: " Промышленная безопасность опасных производственных объектов в соответствии с Федеральным законом от 21 июля 1997 г. № 116-ФЗ «О промышленной безопасности опасных производственных объектов» - это: ",
    answer1: " А) Состояние защищенности конституционного права граждан Российской Федерации на благоприятную окружающую среду посредством предупреждения негативных воздействий хозяйственной и иной деятельности на окружающую природную среду. ",
    answer2: " Б) Система установленных законом мер, обеспечивающих состояние защищенности жизненно важных интересов личности и общества от аварий на опасных производственных объектах и последствий указанных аварий. ",
    answer3: " В) Состояние защищенности жизненно важных интересов личности и общества от аварий на опасных производственных объектах и последствий указанных аварий. ",
    answer4: " Г) Система установленных законом запретов, ограничений и предписаний по безопасной эксплуатации опасных производственных объектов. ",
    answer5: " Д) Установление порядка расследования и учета несчастных случаев на опасном производственном объекте. ",
    rightAnswer: 3,
    i : " абз.2 ст.1 Федерального закона от 21.07.97 N 116-ФЗ \"О промышленной безопасности опасных производственных объектов\"" )

