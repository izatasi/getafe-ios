//
//  StudentViewCell.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class StudentViewCell: UITableViewCell {
   
    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var studentLabel1: UILabel!
    @IBOutlet weak var studentLabel2: UILabel!
    @IBOutlet weak var studentCellView: UIView!
    
    override func prepareForReuse() {
        studentImage.image = nil
        studentLabel1.text = nil
        studentLabel2.text = nil
    }
    
    func configureCell(student: Student) {
        studentImage.image = UIImage(named: student.avatar ?? "")
        studentLabel1.text = student.name
        studentLabel2.text = student.email
    }

}
