//
//  Chapter+CoreDataProperties.swift
//  
//
//  Created by Grayson faircloth on 7/30/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Chapter {

    @NSManaged var title: String?
    @NSManaged var documents: NSSet?
    @NSManaged var article: Article?

}
