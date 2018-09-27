//
//  CustomMigrationPolicy.swift
//  CoreDataTraining
//
//  Created by Duy Pham on 7/31/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import CoreData

class CustomMigrationPolicy: NSEntityMigrationPolicy {
    @objc func transformNumEmployees(forNum: NSNumber) -> String {
        if forNum.intValue < 150 {
            return "small"
        } else {
            return "very large"
        }
    }
}







