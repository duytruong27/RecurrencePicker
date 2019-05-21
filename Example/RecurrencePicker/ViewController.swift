//
//  ViewController.swift
//  RecurrencePicker
//
//  Created by petalvlad@gmail.com on 05/14/2019.
//  Copyright (c) 2019 petalvlad@gmail.com. All rights reserved.
//

import UIKit
import RecurrencePicker

class ViewController: UIViewController, RecurrencePickerDelegate {
    
    @IBAction func tap(_ sender: Any) {
        let recurrencePicker = RecurrencePicker(recurrenceRule: nil)
        recurrencePicker.language = .russian
        recurrencePicker.calendar = Calendar.current
        recurrencePicker.tintColor = UIColor.blue
        
        
        let components = DateComponents(year: 2019, month: 5, day: 31, hour: 15, minute: 30, second: 0)
        let occurrenceDate = Calendar.current.date(from: components) ?? Date()
        
        print(occurrenceDate)
        
        recurrencePicker.occurrenceDate = occurrenceDate
        
        
        // assign delegate
        recurrencePicker.delegate = self
        
        // push to the picker scene
        navigationController?.pushViewController(recurrencePicker, animated: true)
    }
    
    func recurrencePicker(_ picker: RecurrencePicker, didPickRecurrence recurrenceRule: RecurrenceRule?) {
        if var rule = recurrenceRule {
            let components = DateComponents(year: 2019, month: 5, day: 31, hour: 15, minute: 30, second: 0)
            
            let occurrenceDate = Calendar.current.date(from: components) ?? Date()
            rule.startDate = occurrenceDate
            print(rule.toText(occurrenceDate: occurrenceDate))
        }
        
    }
}

