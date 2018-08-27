//
//  LandingViewController.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation

class LandingViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - IBOutlets
        
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - UITableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        // TODO: Update this to use a model
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // TODO: Update this to use a model
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // TODO: Update this with a custom cell
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presentUnderDevelopmentAlert()
    }
}
