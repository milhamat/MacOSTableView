//
//  ViewController.swift
//  MacOSTableView
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 20/11/20.
//

import UIKit

class TableController: UIViewController {
    
    private var tableView: TableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = TableView(frame: self.view.frame)
        self.view = self.tableView
    }


}

