//
//  BaseViewController.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation

class BaseViewController: UIViewController {
    
    // MARK: - Alert
    
    func presentUnderDevelopmentAlert() {
        
        let underDevelopmentAlert = UIAlertController(title: "Under Development", message: "This feature is not yet available.")
        
        present(underDevelopmentAlert, animated: true)
    }
}
