//
//  TableView.swift
//  MacOSTableView
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 20/11/20.
//

import UIKit
import SnapKit

class TableView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .lightGray
    }
}
