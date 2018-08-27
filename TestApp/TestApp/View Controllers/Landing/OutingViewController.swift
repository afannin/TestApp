//
//  LandingViewController.swift
//  TestApp
//
//  Created by Andrew Fannin on 8/27/18.
//  Copyright © 2018 Andrew Fannin. All rights reserved.
//

import UIKit
import Foundation

class OutingViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - IBOutlets
        
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUpTableView()
        setUpNavBar()
    }
    
    // MARK: - IBActions
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        present(AddOutingViewController(), animated: true, completion: nil)
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 125
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return dequeueLandingCell(indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presentUnderDevelopmentAlert()
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - TableView Helpers

extension OutingViewController {
    
    private func setUpNavBar() {
        
<<<<<<< Updated upstream:TestApp/TestApp/View Controllers/Landing/OutingViewController.swift
        navigationBar.topItem?.title = "Hike Journal"
=======
        navigationBar.topItem?.title = "Outings"
>>>>>>> Stashed changes:TestApp/TestApp/View Controllers/Landing/OutingViewController.swift
    }
    
    private func setUpTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(cellType: OutingTableViewCell.self)
    }
    
    private func dequeueLandingCell(indexPath: IndexPath) -> UITableViewCell {
        
        return tableView.dequeueReusableCell(for: indexPath, cellType: OutingTableViewCell.self)
    }
}
