//
//  Questions.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 27/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import Foundation


var questionsStructArray = questionsStructArrayA_1_1

var questionsArray = [""]
var answersArray = [String?]()
var answersArrayArray = [[String]]()
var rightAnswersArray = [0]

struct Questions {
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


