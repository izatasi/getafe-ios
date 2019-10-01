//
//  StudentDetailViewController.swift
//  CursoiOS
//
//  Created by Paulo Galeano on 27/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var section1Label: UILabel!
    @IBOutlet weak var section2Label: UILabel!
    @IBOutlet var dataCollectionView: Array<UICollectionView>!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func Close(_ sender: Any) {
    
        navigationController?.popViewController(animated: true)
    }
    
    var student: Student?
    private var mySubjects: [Subject] = []
    //private var teachersSet: Set<[Teacher]> = []
    private var myTeachers: [Teacher] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(image: student?.avatar)
        configure(title: student?.name)
        configure(subtitle: "")
        configure(section1: "Subjects")
        configure(section2: "Teachers")

        
        findSubjectsAndTeachers(for: student?.name ?? "")
        
        configureCollectionsView()
    }
  
    
    func filter(subjects data: [Subject], by studentName: String) -> [Subject] {
        let studentSubjects = data.filter({ subject in
            let subjectStudents = filter(students: subject.students,
                                         by: studentName)
            
            return subjectStudents.count > 0
        })
        
        return studentSubjects
    }

    func filter(students data: [Student], by studentName: String) -> [Student] {
        let studentsForName = data.filter({ subjectStudent in
            guard let subjectStudentName = subjectStudent.name else {
                return false
            }
            
            return subjectStudentName == studentName
        })
        
        return studentsForName
    }
    

    func teachers(for data: [Subject]) -> Set<Teacher> {
        var subjectsTeachers: Set<Teacher> = Set<Teacher>()
        data.forEach{ subject in
            subject.teachers.forEach{ subjectsTeachers.insert($0) }
        }
        
        return subjectsTeachers
    }
    
    
    func findSubjectsAndTeachers(for studentName: String) {
                
        mySubjects = filter(subjects: defaultSubjects,
                                     by: studentName)
        
        myTeachers = Array(teachers(for: mySubjects))
        
    }
    
    
    func configure(image: String?) {
        guard let imageData = image else {
            imageView.image = nil
            return
        }
        
        imageView.image = UIImage(named: imageData)
    }
    
    func configure(title: String?) {
        titleLabel.text = title
    }
    
    func configure(subtitle: String?) {
        subtitleLabel.text = subtitle
    }
    
    func configure(section1: String?) {
        section1Label.text = section1
    }
    
    func configure(section2: String?) {
        section2Label.text = section2
    }
    
    func configureCollectionsView() {
        dataCollectionView.forEach{ collectionView in
            collectionView.dataSource = self
            collectionView.delegate = self
        }
    }
}

extension StudentDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView.tag {
        case 0:
            return mySubjects.count
            
        case 1:
            return myTeachers.count
            
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailViewCell.cellIdentifier,
                                                            for: indexPath) as? DetailViewCell else {
                                                                return UICollectionViewCell()
        }
        
        switch collectionView.tag {
        case 0:
            if indexPath.row < mySubjects.count {
                let subjecti = mySubjects[indexPath.row]
                cell.configureCell(image: subjecti.logo,
                                   title: subjecti.name)
            }
            
        case 1:
            if indexPath.row < myTeachers.count {
                let teacheri = myTeachers[indexPath.row]
                cell.configureCell(image: teacheri.avatar,
                                   title: teacheri.name)
            }
            
        default:
            return UICollectionViewCell()
        }
        
        return cell
    }
    
}
