//
//  CDUser+CoreDataProperties.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//
//

import Foundation
import CoreData


extension CDUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDUser> {
        return NSFetchRequest<CDUser>(entityName: "CDUser")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var email: String?

}

extension CDUser : Identifiable {

}
