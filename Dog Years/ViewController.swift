//
//  ViewController.swift
//  Dog Years
//
//  Created by jordan on 07/10/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //labe and textFeld for dog age conversion
    @IBOutlet weak var dogYearLabel: UILabel!
    @IBOutlet weak var EnterDogYearTextField: UITextField!
    
    //label and textField for human age conversion
    @IBOutlet weak var enterYourAgeTextView: UITextField!
    @IBOutlet weak var yourYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //dog age conversion button.
    @IBAction func ConvertYearButton() {
        //convert string to double.
        var dogYears = (EnterDogYearTextField.text as NSString).doubleValue
        var age: NSString
        
        //if-else for determining the calculation to use.
        if dogYears <= 2.0 {
            dogYears = dogYears * 10.5
            //NSString is used to format the Double
            age = NSString(format: "&.1f", dogYears)
        } else {
            dogYears = 21 + (dogYears-2) * 4
            age = NSString(format: "%.1f", dogYears)
        }
        
        dogYearLabel.text = "your dog is \(age) years old in human years"
        dogYearLabel.hidden = false
        EnterDogYearTextField.text = ""
        EnterDogYearTextField.resignFirstResponder()
        
    }
    
    //human age conversion button.
    @IBAction func convertToDogYearsButton() {
        var personAge = (enterYourAgeTextView.text as NSString).doubleValue
        var age: NSString
        
        if personAge <= 21 {
            age = NSString(format: "%.1f", personAge/10.5)
        } else {
            age = NSString(format: "%.1f", (2 + (personAge-21)/4))
        }
        
        yourYearLabel.text = "you are \(age) years old in dog years"
        yourYearLabel.hidden = false
        enterYourAgeTextView.text = ""
        enterYourAgeTextView.resignFirstResponder()
    }
}

