//
//  SubjectViewCell.swift
//  CursoIOS
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class SubjectViewCell: UICollectionViewCell {
   
    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subjectName: UILabel!
    @IBOutlet weak var subjectCellView: UIView!
    @IBOutlet weak var subjectNumTeachers: UILabel!
    @IBOutlet weak var subjectNumStudents: UILabel!

    override func prepareForReuse() {
        subjectImage.image = nil
        subjectName.text = nil
        //subjectTeachers.
        //teacherEmail.text = nil
    }
    
    func configureCell(subject: Subject) {
        subjectImage.image = UIImage(named: subject.logo ?? "")
        subjectName.text = subject.name
        subjectNumStudents.text = subject.students.count()
        //teacherEmail.text = teacher.email
    }

}
