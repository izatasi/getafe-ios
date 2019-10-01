//
//  SubjectsViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class SubjectsViewContoller: UIViewController {
    
    // MARK: = IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
    }
}
    
extension SubjectsViewContoller: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    //Configure
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailViewCell.cellI, for: indexPath) as? SubjectViewCell else {
            return UICollectionViewCell()
        }
        
        if (indexPath.row < defaultSubjects.count) {
            let subject = defaultSubjects[indexPath.row]
            cell.configureCell(subject: subject)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 16.0) / 2
        return CGSize(width: size, height: size)
    }
}
