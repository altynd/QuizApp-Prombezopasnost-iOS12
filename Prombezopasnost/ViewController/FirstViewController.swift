//
//  FirstViewController.swift
//  Prombezopasnost
//
//  Created by Altyn Dmitry on 29/01/2019.
//  Copyright © 2019 Altyn Dmitry. All rights reserved.
//

import UIKit
import Foundation

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        Obuchenie.isEnabled = false
        Obuchenie.setTitleColor(UIColor.gray, for: .normal)
        Trenirovka.isEnabled = false
        Trenirovka.setTitleColor(UIColor.gray, for: .normal)
        
    }
    

    @IBOutlet weak var nameOfKursLabel: UILabel!
    
    @IBOutlet weak var nameOfKursOutlet: UIButton!
    
    @IBOutlet weak var Obuchenie: UIButton!
    
    @IBOutlet weak var Trenirovka: UIButton!
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    let nameOfKurses : [String] = [
    "Основы промышленной безопасности",
    "Ремонтные, монтажные и пусконаладочные работы на опасных производственных объектах нефтегазодобычи",
    "Проектирование, строительство, реконструкция и капитальный ремонт объектов нефтяной и газовой промышленности",
    "Разведка и разработка морских месторождений углеводородного сырья",
    "Эксплуатация сосудов, работающих под давлением, на опасных производственных объектах",
    "Эксплуатация электроустановок"
    ]
    
    let indexOfKurses : [String] = [
        "Курс А.1.1",
        "Курс Б.2.4",
        "Курс Б.2.13",
        "Курс Б.2.18",
        "Курс Б 8.23",
        "Курс Г.1.1"
        ]
    
    let questionStructArrayPickArray : [[Questions]] = [
    questionsStructArrayA_1_1,
    questionsStructArrayB_2_4,
    questionsStructArrayB_2_13,
    questionsStructArrayB_2_18,
    questionsStructArrayB_8_23,
    questionsStructArrayG_1_1
    ]
    
    //сколько столбцов в пикере
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // сколько строк в пикере
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return indexOfKurses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nameOfKursOutlet.setTitle(indexOfKurses[row], for: .normal)
        nameOfKursLabel.text = nameOfKurses[row]
        questionsStructArray = questionStructArrayPickArray[row]
    }
    //что отображается в пикере
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return indexOfKurses[row]
    }

}

