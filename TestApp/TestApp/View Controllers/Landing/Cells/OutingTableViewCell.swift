//
//  LandingTableViewCell.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation
import Reusable

class OutingTableViewCell: UITableViewCell, NibReusable {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - UI
    
    func load(title: String = "", description: String = "") {
        
        titleLabel.text = title
        descriptionLabel.text = description
    }
}
