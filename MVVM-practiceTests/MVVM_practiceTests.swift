//
//  MVVM_practiceTests.swift
//  MVVM-practiceTests
//
//  Created by Shawn on 7/5/19.
//  Copyright © 2019 Shawn Hong. All rights reserved.
//

import XCTest
@testable import MVVM_practice

class MVVM_practiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCourseViewModel() {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 10)
        let courseViewModel = CourseViewModal(course: course)
        
        XCTAssertEqual(course.name, courseViewModel.name)
        XCTAssertEqual("Lessons: \(course.number_of_lessons)", courseViewModel.detailTextString)
        XCTAssertEqual(.none, courseViewModel.accessoryType)
    }
    
    func testCourseViewModelLessonsOverThreshold() {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 100)
        let courseViewModel = CourseViewModal(course: course)
        XCTAssertEqual("Lessonss 30+ Check it Out!", courseViewModel.detailTextString)
        XCTAssertEqual(.detailDisclosureButton, courseViewModel.accessoryType)
    }

}
