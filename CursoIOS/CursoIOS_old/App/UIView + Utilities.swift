//
//  UIView + Utilities.swift
//  CursoIOS
//
//  Created by Dev2 on 27/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

extension UIView {
    func configureShadows(color: UIColor = UIColor.lightGray,
                          opacity: Float = 0.6,
                          radius: CGFloat = 4.0,
                          offset: CGSize = CGSize.zero) {
        
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
    }
}
