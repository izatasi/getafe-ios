//
//  StudentViewCell.swift
//  CursoiOS
//
//  Created by Dev1 on 25/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


class PersonViewCell: UITableViewCell {
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mLabelName: UILabel!
    @IBOutlet weak var mLabelEmail: UILabel!
    
    
    override func prepareForReuse() {
        mImage.image = nil
        mLabelName.text = nil
        mLabelEmail.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mView.layer.cornerRadius = 8.0
        mView.configureShadows()
    }
    
    func configureCell(image: String?, name: String?, email: String?) {
        mImage.image = UIImage(named: image ?? "")
        mLabelName.text = name
        mLabelEmail.text = email
    }
}
