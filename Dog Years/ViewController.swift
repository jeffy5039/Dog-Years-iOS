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
        
        //if-else for determining the calculation to use.
        if dogYears <= 2.0 {
            dogYearLabel.text = "your dog is \(dogYears * 10.5) years old in human years"
        } else {
            var ageInHumanYears: Double = 2 * 10.5;
            dogYears -= 2
            //NSString to format the Double
            var age = NSString(format: "%.1f", ageInHumanYears + dogYears * 4)
            dogYearLabel.text = "your dog is \(age) years old in human years"
        }

        dogYearLabel.hidden = false
        EnterDogYearTextField.text = ""
        
    }
    
    //human age conversion button.
    @IBAction func convertToDogYearsButton() {
        var personAge = (enterYourAgeTextView.text as NSString).doubleValue
        if personAge <= 21 {
            var youngAge = NSString(format: "%.1f", personAge/10.5)
            yourYearLabel.text = "you are \(youngAge) years old in dog years"
        } else {
            var ageInDogYears: Double = 2
            personAge -= 21
            var age = NSString(format: "%.1f", ageInDogYears + personAge/4)
            yourYearLabel.text = "you are \(age) years old in dog years"
        }
        yourYearLabel.hidden = false
        enterYourAgeTextView.text = ""
    }
}

