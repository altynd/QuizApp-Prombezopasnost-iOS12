//
//  Questions.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 27/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import Foundation

// задаем вопросы
var voprosiArray = [
    "вопрос 1?",
    "вопрос 2?",
    "вопрос 3?",
    "вопрос 4?",
    "вопрос 5?"
]

//TODO: создать динамичекий массив, подгрузку вопросов

// ответы
let otvetiArray = [
    ["ответ 1.1", "ответ 1.2", "ответ 1.3", "ответ 1.4", "ответ 1.5"],
    ["ответ 2.1", "ответ 2.2", "ответ 2.3", "ответ 2.4", ""],
    ["ответ 3.1", "ответ 3.2", "ответ 3.3", "", ""],
    ["ответ 4.1", "ответ 4.2", "", "", ""],
    ["ответ 5.1", "", "", "", ""]
]
//TODO: создать динамичекий массив, подгрузку ответов

let pravelniyOtvetIndexArray = [
    3,
    2,
    1,
    2,
    3
]
//TODO: создать динамичекий массив, подгрузку индекса правильного ответов

var vibraniyOtvetArray = [0,0,0,0,0,0] //
//TODO: создать динмаичекий массив, подгрузку ячеек на 1 больше чем вопросов

//////////////////

struct QuestionsA1 {
    var question : String
    var answer1 : String
    var answer2 : String
    var answer3 : String
    var answer4 : String
    var answer5 : String
    var rightAnwser : Int
}

var questionsArray : [QuestionsA1] = []

//Сюда добавляем вопросы с ответами

//let question0 = QuestionsA1(
//    question: "",
//    answer1: "",
//    answer2: "",
//    answer3: "",
//    answer4: "",
//    answer5: "",
//    rightAnwser: 0)

var question1 = QuestionsA1(
    question: "вопрос 1?",
    answer1: "ответ 1.1",
    answer2: "ответ 1.2",
    answer3: "ответ 1.3",
    answer4: "ответ 1.4",
    answer5: "ответ 1.5",
    rightAnwser: 1)


var question2 = QuestionsA1(
    question: "вопрос 2?",
    answer1: "ответ 2.1",
    answer2: "ответ 2.2",
    answer3: "ответ 2.3",
    answer4: "ответ 2.4",
    answer5: "",
    rightAnwser: 2)

let question3 = QuestionsA1(
    question: "вопрос 3?",
    answer1: "ответ 3.1",
    answer2: "ответ 3.2",
    answer3: "ответ 3.3",
    answer4: "",
    answer5: "",
    rightAnwser: 3)

let question4 = QuestionsA1(
    question: "вопрос 4?",
    answer1: "ответ 4.1",
    answer2: "ответ 4.2",
    answer3: "",
    answer4: "",
    answer5: "",
    rightAnwser: 2)

let question5 = QuestionsA1(
    question: "вопрос 5?",
    answer1: "ответ 5.1",
    answer2: "",
    answer3: "",
    answer4: "",
    answer5: "",
    rightAnwser: 1)


//
//questionsArray.append(question1)
//questionsArray.append(question2)
//
//for question in questionsArray{
//    questionsArray.append(<#T##newElement: QuestionsA1##QuestionsA1#>)
//}
