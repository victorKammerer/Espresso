//
//  UserTask+CoreDataProperties.swift
//  EspressoUITests
//
//  Created by vko on 31/05/23.
//

import Foundation
import CoreData


extension UserTask {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserTask> {
        return NSFetchRequest<UserTask>(entityName: "UserTask")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var time: Int64
    @NSManaged public var title: String?
    @NSManaged public var status: String?
    
    var wrappedID: UUID { id! }
    var wrappedTitle: String { title ?? "" }
    var wrappedTime: Int64 { time }
    var wrappedStatus: String { status ?? "" }
}

extension UserTask : Identifiable {

}

