//
//  DetailViewCell.swift
//  CursoIOS
//
//  Created by Dev2 on 30/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class DetailViewCell: UICollectionViewCell {
    static let cellIdentifier = String(describing: DetailViewCell.self)
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var CellView: UIView!
    //@IBOutlet weak var subjectNumTeachers: UILabel!
    //@IBOutlet weak var subjectNumStudents: UILabel!

    override func prepareForReuse() {
        cellImage.image = nil
        cellName.text = nil
        //subjectTeachers.
        //teacherEmail.text = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        CellView.layer.cornerRadius = 8.0
        CellView.configureShadows()
    }
    

    
    func configureCell(label:String, imageName:String) {
        cellImage.image = UIImage(named: imageName  .logo ?? "")
        cellName.text = subject.name
        subjectNumStudents.text = "Students (" + String(subject.students.count) + ")"
        subjectNumTeachers.text = "Teachers (" + String(subject.teachers.count) + ")"
    }

}
