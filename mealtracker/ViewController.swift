//
//  ViewController.swift
//  mealtracker
//
//  Created by SIMRANPREET KAUR on 25/10/17.
//  Copyright © 2017 SIMRANPREET KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK:Pr
    
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text="Default Text"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
       mealNameLabel.text=textField.text
    }

}

