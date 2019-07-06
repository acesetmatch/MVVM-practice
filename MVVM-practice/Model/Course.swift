//
//  Course.swift
//  MVVM-practice
//
//  Created by Shawn on 7/5/19.
//  Copyright © 2019 Shawn Hong. All rights reserved.
//

import Foundation

struct Course: Decodable {
    let id: Int
    let name: String
    let number_of_lessons: Int
}
