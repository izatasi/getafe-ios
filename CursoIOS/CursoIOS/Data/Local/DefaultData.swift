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
                                                                                                                
                                                                                                                month: 5)), avatar: "img_student_2"),
                       
                       Student(name: "Sara",
                               
                               email: "sara@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                                              
                                                                                                              month: 9)), avatar: "img_student_1"),
                       
                       Student(name: "David",
                               
                               email: "david@gmail.com",birthdate: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                                              
                                                                                                              month: 4)), avatar: "img_student_3"),
                       
                       Student(name: "Ángela",
                               
                               email: "angela@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                                               
                                                                                                               month: 9)), avatar: "img_student_4"),
                       
                       Student(name: "María",
                               
                               email: "maria@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                                               
                                                                                                               month: 4)), avatar: "img_student_5"),
                       
                       Student(name: "Eduardo",
                               
                               email: "eduardo@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                                                 
                                                                                                                 month: 12)), avatar: "img_student_6"),
                       
                       Student(name: "Miguel",
                               
                               email: "miguel@gmail.com", birthdate: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                                                
                                                                                                                month: 6)), avatar: "img_student_7")]



let defaultTeachers = [Teacher(name: "Juan",
                               
                               email: "juan@gmail.com",
                               
                               type: .intern,
                               avatar: "img_teacher_2"),
                       
                       Teacher(name: "Lucía",
                               
                               email: "lucia@gmail.com",
                               
                               type: .extern,
                               avatar: "img_teacher_1"),
                       
                       Teacher(name: "Paulo",
                               
                               email: "paulo@gmail.com",
                               
                               type: .extern,
                               avatar: "img_teacher_3"),
                       
                       Teacher(name: "Javier",
                               
                               email: "javier@gmail.com",
                               
                               type: .intern,
                               avatar: "img_teacher_4"),
                       
                       Teacher(name: "Marlon",
                               
                               email: "marlon@gmail.com",
                               
                               type: .intern,
                               avatar: "img_teacher_5")]



let defaultSubjects = [Subject(name: "Android",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("a") ?? false},
                               logo: "img_subject_android"),
                       
                       Subject(name: "iOS",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false},
                               logo: "img_subject_ios"),
                       
                       Subject(name: "JavaScript",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("i") ?? false},
                               logo: "img_subject_javascript"),
                       
                       Subject(name: "Python",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false},
                               logo: "img_subject_python"),
                       
                       Subject(name: "Polymer",
                               
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false},
                               logo: "img_subject_dart")]


