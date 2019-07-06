//
//  CourseViewModal.swift
//  MVVM-practice
//
//  Created by Shawn on 7/5/19.
//  Copyright © 2019 Shawn Hong. All rights reserved.
//

import Foundation
import UIKit

struct CourseViewModal {
    
    let name: String
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    
    // Dependency Injection
    init(course: Course) {
        self.name = course.name
        
        if course.number_of_lessons > 35 {
            detailTextString = "Lessonss 30+ Check it Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lessons: \(course.number_of_lessons)"
             accessoryType = .none
        }
    
    }
    
    
}
