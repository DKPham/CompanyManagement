//
//  CompaniesController+CreateCompanyControllerDelegate.swift
//  CoreDataTraining
//
//  Created by Duy Pham on 7/29/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

extension CompaniesController: CreateCompanyControllerDelegate {

    func didAddCompany(company: Company) {
        companies.append(company)
        let newIndexPath = IndexPath(row: companies.count - 1, section: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
    }
    
    func didEditCompany(company: Company) {
        guard let row = companies.index(of: company) else { return }
        let reloadIndexPath = IndexPath(row: row, section: 0)
        tableView.reloadRows(at: [reloadIndexPath], with: .middle)
    }
}












