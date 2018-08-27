//
//  UIAlertController+Helper.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation

typealias CompletionHandler = () -> Void

extension UIAlertController {
    
    convenience init(title: String = "", message: String, cancelButtonTitle: String = "OK", cancelAction: CompletionHandler? = nil) {
        
        self.init(title: title, message: message, preferredStyle: .alert)
        addCancelAction(title: cancelButtonTitle) {
            
            cancelAction?()
        }
    }
    
    func addCancelAction(title: String = "Cancel", completion: CompletionHandler? = nil) {
        
        addAction(UIAlertAction(title: title, style: .cancel, handler: { _ in
            completion?()
        }))
    }
}
