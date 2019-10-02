//
//  TeacherDetailViewController.swift
//  CursoiOS
//
//  Created by Paulo Galeano on 01/10/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit

class TeacherDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var section1Label: UILabel!
    @IBOutlet weak var section2Label: UILabel!
    @IBOutlet var dataCollectionView: Array<UICollectionView>!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func close(_ sender: UIButton) {
         let alert = UIAlertController(title: "¿Delete the Teacher?",
                                      message: "You will delete this Teacher permanently.  Are you sure",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Delete",
                                      style: .destructive ,
                                      handler: {[weak self] _ in
                                        defaultTeachers.removeAll { $0.name == self?.teacher?.name}
        self?.navigationController?.popViewController(animated: true)

        }))

        alert.addAction(UIAlertAction(title: "Cancel",
                                      style: .cancel))

        present(alert, animated: true)
        
        //        Cuando era solo cerrar!!!
        //        handler: {[weak self] _ in
        //        self?.navigationController?.popViewController(animated: true)}))
    }

    var teacher: Teacher?
    private var mySubjects: [Subject] = []
    //private var teachersSet: Set<[Teacher]> = []
    private var myStudents: [Student] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(image: teacher?.avatar)
        configure(title: teacher?.name)
        configure(subtitle: "")
        configure(section1: "Subjects")
        configure(section2: "Students")

        
        findSubjectsAndStudents(for: teacher?.name ?? "")
        
        configureCollectionsView()
    }
  
    
    func filter(subjects data: [Subject], teacherName: String) -> [Subject] {
        let teacherSubjects = data.filter({ subject in
            let subjectTeacher = filter(teacher: subject.teachers,
                                         by: teacherName)
            
            return subjectTeacher.count > 0
        })
        
        return teacherSubjects
    }

    func filter(teacher data: [Teacher], by teacherName: String) -> [Teacher] {
        let teachersForName = data.filter({ subjectTeacher in
            guard let subjectTeacherName = subjectTeacher.name else {
                return false
            }
            
            return subjectTeacherName == teacherName
        })
        
        return teachersForName
    }

    func students(for data: [Subject]) -> Set<Student> {
        var subjectsStudents: Set<Student> = Set<Student>()
        data.forEach{ subject in
            subject.students.forEach{ subjectsStudents.insert($0) }
        }
        
        return subjectsStudents
    }
    
    func findSubjectsAndStudents(for teacherName: String) {
                
        mySubjects = filter(subjects: defaultSubjects, teacherName: teacherName)
        
        myStudents = Array(students(for: mySubjects))
        
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

extension TeacherDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView.tag {
        case 0:
            return mySubjects.count
            
        case 1:
            return myStudents.count
            
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
            if indexPath.row < myStudents.count {
                let studenti = myStudents[indexPath.row]
                cell.configureCell(image: studenti.avatar,
                                   title: studenti.name)
            }
            
        default:
            return UICollectionViewCell()
        }
        
        return cell
    }
    
}
