//
//  Subject.swift
//  CursoIOS
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//
// By: Paulo Galeano

import Foundation

class Subject: CustomStringConvertible {
    
    var name: String?
    var teachers: [Teacher] = []
    var students: [Student] = []
    var logo: String?
    
    var numTeachers: Int {
        return teachers.count
    }
    
    var numStudents: Int {
        return students.count
    }
 
    var description: String {
        return "Subject data \(String(describing: name))"
    }

    convenience init(name: String, teachers: [Teacher] = [], students: [Student] = [], logo: String? = nil) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
        self.logo = logo
    }
}

