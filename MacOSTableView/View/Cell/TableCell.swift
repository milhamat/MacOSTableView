//
//  TableCell.swift
//  MacOSTableView
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 20/11/20.
//

import UIKit

class TableCell: UITableViewCell {
    
    let numberLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
//        self.backgroundColor = .white
        
        self.addSubview(self.numberLabel)
        self.addSubview(self.userLabel)
        self.addSubview(self.detailLabel)
        
        self.numberLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(8)
            make.left.equalTo(self).offset(5)
            make.bottom.equalTo(self).offset(-8)
        }
        
        self.userLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(8)
            make.left.equalTo(self).offset(50)
            make.bottom.equalTo(self).offset(-8)
        }
        
        self.detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(8)
            make.left.equalTo(self).offset(250)
            make.bottom.equalTo(self).offset(-8)
        }
        
    }
}
