//
//  ViewController.swift
//  mealtracker
//
//  Created by SIMRANPREET KAUR on 25/10/17.
//  Copyright © 2017 SIMRANPREET KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:Pr
    
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text="Default Text"
    }


}

