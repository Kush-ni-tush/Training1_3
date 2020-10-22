//
//  ViewController.swift
//  Training1_3
//
//  Created by Nikita Kushner on 10/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textDay: UITextField!
    @IBOutlet weak var textMounth: UITextField!
    @IBOutlet weak var textYear: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func tapped(_ sender: UIButton) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(textDay.text!)
        dateComponents.month = Int(textMounth.text!)
        dateComponents.year = Int(textYear.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date( from: dateComponents)
        let weekDay = dateFormatter.string(from: date!)
        resultLabel.text = weekDay
        print("trainig saving")
    }
   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       self.view.endEditing(true)
   }
   
}

//let calendar = Calendar.current
//var dateComponents = DateComponents()
//dateComponents.day = Int(textDay.text!)
//dateComponents.month = Int(textMounth.text!)
//dateComponents.year = Int(textYear.text!)
//
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "EEEE"
//
//let date  = calendar.date(from: dateComponents)
//let weekDate = dateFormatter.string(from: date!)
//
//resultLabel.text = weekDate
