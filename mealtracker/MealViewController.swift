//
//  ViewController.swift
//  mealtracker
//
//  Created by SIMRANPREET KAUR on 25/10/17.
//  Copyright © 2017 SIMRANPREET KAUR. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    //MARK:Pr
    
    //
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ratingcontrol: RatingControl!
    
    @IBOutlet weak var photoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate=self
        photoImage.isUserInteractionEnabled=true
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
        
    }
    @IBAction func selectImage(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        let imagePickerController=UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate=self
        present(imagePickerController,animated: true,completion: nil)
    }
    
 
    
   
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
            else
        {
            fatalError("error \(info)")
            
        }
    photoImage.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
}

