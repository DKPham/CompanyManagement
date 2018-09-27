//
//  CompanyCell.swift
//  CoreDataTraining
//
//  Created by Duy Pham on 7/29/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class CompanyCell: UITableViewCell {
    var company: Company? {
        didSet {
            nameFoundedDateLabel.text = company?.name
 
            if let imageData = company?.imageData {
                companyImageView.image = UIImage(data: imageData)
            }

            if let name = company?.name, let founded = company?.founded {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM dd, yyyy"
                let foundedDateString = dateFormatter.string(from: founded)
                let dateString = "\(name) - Founded: \(foundedDateString)"
                nameFoundedDateLabel.text = dateString
            } else {
                nameFoundedDateLabel.text = company?.name
                //A - 1: add this line of code to see the numEmployees in table view
                nameFoundedDateLabel.text = "\(company?.name ?? "") \(company?.numEmployees ?? "")"
            }
        }
    }

    let companyImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "select_photo_empty").withRenderingMode(.alwaysOriginal))
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 40 / 2
        iv.layer.masksToBounds = true
        iv.layer.borderColor = UIColor.darkBlue().cgColor
        iv.layer.borderWidth = 1
        return iv
    }()

    let nameFoundedDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.darkSlateBlue()
        
        addSubview(companyImageView)
        companyImageView.anchor(top: nil, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        companyImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(nameFoundedDateLabel)
        nameFoundedDateLabel.anchor(top: topAnchor, left: companyImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



























