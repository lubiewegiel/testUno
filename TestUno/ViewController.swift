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
    @IBOutlet weak var negroNameLabel: UILabel!
    

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
        
        negroNameLabel.text = nameTextField.text
    }
    
    //MARK: Actions
    @IBAction func addNegroButton(_ sender: UIButton) {
//        if ((nameTextField.text) != ""){
//            negroNameLabel.text = nameTextField.text
//        } else {
//            negroNameLabel.text = "Taki chuj"
//        }
        
        negroNameLabel.text = "Zreseciłem czarnucha"
    }
    
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    

}

