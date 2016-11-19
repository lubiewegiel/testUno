//
//  ViewController.swift
//  TestUno
//
//  Created by Radosław Inczewski on 18.11.2016.
//  Copyright © 2016 Mine. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nevermindNameLabel: UILabel!
    @IBOutlet weak var CactusImageView: UIImageView!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Handle the textfield's user input through delegate calbacks
        nameTextField.delegate = self
        
        //Adding tap gesture that will hide keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //Hide keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        nevermindNameLabel.text = nameTextField.text
    }
    
    //MARK: Actions
    @IBAction func addResetButton(_ sender: UIButton) {
//        if ((nameTextField.text) != ""){
//            nevermindNameLabel.text = nameTextField.text
//        } else {
//            nevermindNameLabel.text = "Taki chuj"
//        }
        
        nevermindNameLabel.text = "Zreseciłem"
    }
    
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    

}

