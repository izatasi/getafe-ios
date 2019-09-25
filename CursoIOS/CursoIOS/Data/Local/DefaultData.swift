//
//  DefaultData.swift
//  CursoIOS
//
//  Created by Dev2 on 23/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
// By: Paulo Galeano

import Foundation


let defaultStudents = [Student(name: "Óliver",
                               
                               email: "oliver@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                                                
                                                                                                                month: 5)), avatar: "img_student_1"),
                       
                       Student(name: "Sara",
                               
                               email: "sara@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                                              
                                                                                                              month: 9)), avatar: "img_student_2"),
                       
                       Student(name: "David",
                               
                               email: "david@gmail.com",birthdate: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                                              
                                                                                                              month: 4)), avatar: "img_student_3"),
                       
                       Student(name: "Ángel",
                               
                               email: "angel@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                                               
                                                                                                               month: 9)), avatar: "img_student_4"),
                       
                       Student(name: "María",
                               
                               email: "maria@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                                               
                                                                                                               month: 4)), avatar: "img_student_5"),
                       
                       Student(name: "Eduardo",
                               
                               email: "eduardo@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                                                 
                                                                                                                 month: 12)), avatar: "img_student_1"),
                       
                       Student(name: "Miguel",
                               
                               email: "miguel@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                                                
                                                                                                                month: 6)), avatar: "img_student_7")]



let defaultTeachers = [Teacher(name: "Juan",
                               
                               email: "juan@gmail.com",
                               
                               type: .intern),
                       
                       Teacher(name: "Lucía",
                               
                               email: "lucia@gmail.com",
                               
                               type: .extern),
                       
                       Teacher(name: "Paula",
                               
                               email: "paula@gmail.com",
                               
                               type: .extern),
                       
                       Teacher(name: "Javier",
                               
                               email: "javier@gmail.com",
                               
                               type: .intern),
                       
                       Teacher(name: "Marta",
                               
                               email: "marta@gmail.com",
                               
                               type: .intern)]



let defaultSubjects = [Subject(name: "Android",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                       
                       Subject(name: "iOS",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                       
                       Subject(name: "JavaScript",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                       
                       Subject(name: "Python",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                       
                       Subject(name: "Polymer",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false})]


