//
//  ViewController.swift
//  Dog Years
//
//  Created by jordan on 07/10/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearLabel: UILabel!
    @IBOutlet weak var EnterDogYearTextField: UITextField!
    
    
    @IBOutlet weak var enterYourAgeTextView: UITextField!
    @IBOutlet weak var yourYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertYearButton() {
        var dogYears = (EnterDogYearTextField.text as NSString).doubleValue
        dogYearLabel.text = "your dog is \(dogYears * 6.5) years old in human years"
        dogYearLabel.hidden = false
        EnterDogYearTextField.text = ""
        
    }

    @IBAction func convertToDogYearsButton() {
        var personAge = (enterYourAgeTextView.text as NSString).doubleValue
        yourYearLabel.text = "you are \(personAge/6.5) years old in dog years"
        yourYearLabel.hidden = false
        enterYourAgeTextView.text = ""
    }
}

