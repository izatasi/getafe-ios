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
    
extension SubjectsViewContoller: UICollectionViewDataSource, UICollectionViewDelegate {

    //Configure
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectViewCell", for: indexPath) as? SubjectViewCell else {
            return UICollectionViewCell()
        }
        
        if (indexPath.row < defaultSubjects.count) {
            let subject = defaultSubjects[indexPath.row]
            cell.configureCell(subject: subject)
        }
        return cell
    }
    
}
