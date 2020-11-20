//
//  ViewController.swift
//  MacOSTableView
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 20/11/20.
//

import UIKit

class TableController: UIViewController {
    
    private var tableView: TableView!
    
    let listNumber = ["No.","1","2","3","4"]
    let listUser = ["UserName","LebahGanteng","MarkuniManis","SayaManis","EnakEnak69"]
    let listDetail = ["Detail",
                      "asdasdasdasdasdasdasdasdasdasdasda",
                      "asdasdasdasdasdasdasdasdasdasdasda",
                      "asdasdasdasdasdasdasdasdasdasdasda",
                      "asdasdasdasdasdasdasdasdasdasdasda"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = TableView(frame: self.view.frame)
        self.view = self.tableView
        
        self.tableView.firsTableView.delegate = self
        self.tableView.firsTableView.dataSource = self
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
}

extension TableController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableCell
//        cell.textLabel!.text = listNumber[indexPath.row]
        cell.numberLabel.text = listNumber[indexPath.row]
        cell.userLabel.text = listUser[indexPath.row]
        cell.detailLabel.text = listDetail[indexPath.row]
        return cell
    }
    
    
}
