//
//  Questions.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 27/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import Foundation

//    var questionsStructArray = [QuestionsA1]()
    var questionsArray = [""]
//    var answersArray = Array(Array(repeating: "", count: 5))
    var answersArrayArray = [[String]]()
    var answersArray = [String]()
    var rightAnswersArray = [0]

// ответы

//let questionArray = [
//    ["вопрос1?"],
//    ["вопрос2?"],
//    ["вопрос3?"],
//    ["вопрос4?"],
//    ["вопрос5?"],
//]

//let answersArray = [
//    ["ответ 1.1", "ответ 1.2", "ответ 1.3", "ответ 1.4", "ответ 1.5"],
//    ["ответ 2.1", "ответ 2.2", "ответ 2.3", "ответ 2.4", ""],
//    ["ответ 3.1", "ответ 3.2", "ответ 3.3", "", ""],
//    ["ответ 4.1", "ответ 4.2", "", "", ""],
//    ["ответ 5.1", "", "", "", ""]
//]

//let rightAnswersArray = [
//    [1],
//    [2],
//    [3],
//    [2],
//    [1],
//]

//////////////////

struct QuestionsA1 {
    var question : String
    var answer1 : String
    var answer2 : String
    var answer3 : String
    var answer4 : String
    var answer5 : String
    var rightAnswer : Int
    var answersArray : [String]
    
    init(question:String,
         answer1 : String,
         answer2 : String,
         answer3 : String,
         answer4 : String,
         answer5 : String,
         rightAnswer : Int,
         answersArray : [String])
    {
        self.question=question
        self.answer1=answer1
        self.answer2=answer2
        self.answer3=answer3
        self.answer4=answer4
        self.answer5=answer5
        self.rightAnswer=rightAnswer
        self.answersArray=[self.answer1,self.answer2,self.answer3,self.answer4,self.answer5]
    }
    
//    mutating func addNewQuestionsToStruct(question: QuestionsA1, rightAnswer: QuestionsA1){
//        questionsArray.append(question.question)
//        rightAnswersArray.append(rightAnswer.rightAnswer)
//    }
}



var questionsStructArray : [QuestionsA1] = [question1, question2, question3, question4, question5]

//Сюда добавляем вопросы с ответами
var question1 = QuestionsA1(
    question: "вопрос 1?",
    answer1: "ответ 1.1",
    answer2: "ответ 1.2",
    answer3: "ответ 1.3",
    answer4: "ответ 1.4",
    answer5: "ответ 1.5",
    rightAnswer: 1,
    answersArray: answersArray)

//questionsStructArray[0].question
//questionsStructArray[0].addNewQuestionsToStruct(question: question1, rightAnswer: question1)

var question2 = QuestionsA1(
    question: "вопрос 2?",
    answer1: "ответ 2.1",
    answer2: "ответ 2.2",
    answer3: "ответ 2.3",
    answer4: "ответ 2.4",
    answer5: "",
    rightAnswer: 2,
    answersArray: answersArray)

let question3 = QuestionsA1(
    question: "вопрос 3?",
    answer1: "ответ 3.1",
    answer2: "ответ 3.2",
    answer3: "ответ 3.3",
    answer4: "",
    answer5: "",
    rightAnswer: 3,
    answersArray: answersArray)

let question4 = QuestionsA1(
    question: "вопрос 4?",
    answer1: "ответ 4.1",
    answer2: "ответ 4.2",
    answer3: "",
    answer4: "",
    answer5: "",
    rightAnswer: 2,
    answersArray: answersArray)

let question5 = QuestionsA1(
    question: "вопрос 5?",
    answer1: "ответ 5.1",
    answer2: "",
    answer3: "",
    answer4: "",
    answer5: "",
    rightAnswer: 1,
    answersArray: answersArray)


//let question0 = QuestionsA1(
//    question: "",
//    answer1: "",
//    answer2: "",
//    answer3: "",
//    answer4: "",
//    answer5: "",
//    rightAnwser: 0)
