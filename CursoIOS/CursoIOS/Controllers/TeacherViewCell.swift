//
//  TeacherViewCell.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class TeacherViewCell: UITableViewCell {
   
    @IBOutlet weak var teacherImage: UIImageView!
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var teacherEmail: UILabel!
    @IBOutlet weak var teacherCellView: UIView!
    
    override func prepareForReuse() {
        teacherImage.image = nil
        teacherName.text = nil
        teacherEmail.text = nil
    }
    
    func configureCell(teacher: Teacher) {
        teacherImage.image = UIImage(named: teacher.avatar ?? "")
        teacherName.text = teacher.name
        teacherEmail.text = teacher.email
    }

}
