//
//  BlogEntity+CoreDataProperties.swift
//  My-Daily-Blog
//
//  Created by 김혜수 on 2021/10/27.
//
//

import Foundation
import CoreData


extension BlogEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BlogEntity> {
        return NSFetchRequest<BlogEntity>(entityName: "BlogEntity")
    }

    @NSManaged public var content: String?
    @NSManaged public var date: Date?

}

extension BlogEntity : Identifiable {
    func setMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        if let dateToBeModified = date {
            let month = dateFormatter.string(from: dateToBeModified)
            return month.uppercased()
        }
        return ""
    }
    
    func setDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        if let dateToBeModified = date {
            let month = dateFormatter.string(from: dateToBeModified)
            return month.uppercased()
        }
        return ""
    }
}
