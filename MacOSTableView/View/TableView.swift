//
//  TableView.swift
//  MacOSTableView
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 20/11/20.
//

import UIKit
import SnapKit

class TableView: UIView {
    
    let firsTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
        self.addSubview(firsTableView)
        
        self.firsTableView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.centerX.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
