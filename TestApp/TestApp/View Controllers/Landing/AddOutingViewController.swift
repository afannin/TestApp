//
//  AddOutingViewController.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation

class AddOutingViewController: BaseViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    // MARK: - Lifecycle
    
    // MARK: - IBActions
    
    @IBAction func uploadButtonTapped(_ sender: Any) {
        
        presentUnderDevelopmentAlert()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - UITextField
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == dateTextField {
            
            textField.inputView = UIDatePicker()
        }
    }
}
