//
//  DetailsViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 27/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var headerDetailView: UIView!
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var headerSubtitle: UILabel!
    @IBOutlet weak var data1Title: UILabel!
    @IBOutlet weak var data2Title: UILabel!

    @IBOutlet weak var data1CollectionView: UICollectionView!
    //@IBOutlet weak var data1CellView: UIView!
    //@IBOutlet weak var data1Image: UIImage!
    //@IBOutlet weak var data1OImageLabel: UILabel!
    
    @IBOutlet weak var data2CollectionView: UICollectionView!
    //@IBOutlet weak var data2CellView: UIView!
    //@IBOutlet weak var data2Image: UIImage!
    //@IBOutlet weak var data2ImageLabel: UILabel!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    var data: Subject?
    

//************* pasting **** command-v ******************
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //configureCollectionView()
        }
    
    func configure(image: String) {
        
    }
    
    func configure(title: String) {
        
    }
    
    func configure(subtitle: String) {
        
    }
    
    func configure(dataTitle1: String) {
        //teachers
    }
    
    func configure(dataTitle2: String) {
        //students
    }
    

}

extension DetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func configureCollectionView1() {
       
        data1CollectionView.dataSource = self
        data1CollectionView.delegate = self
    }

    func configureCollectionView2() {
        data2CollectionView.dataSource = self
        data2CollectionView.delegate = self

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}


//    func configureHeaderImage() {
//        headerImage.image = data?.logo
//        headerTitle.text = data?.name
//
//    }
//
//    func configureHeaderTitle() {
//
//    }
//
//    func configureHeaderSubtitle() {
//
//    }
//
//    func configureData1Title() {
//
//    }
//
//    func configureData2Title() {
//
//    }
//
//}
        
//extension DetailsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//
//    //Configure
//    func configureCollectionView() {
//        data1CollectionView .dataSource = self
//        data1CollectionView.delegate = self
//        data2CollectionView .dataSource = self
//        data2CollectionView.delegate = self
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return defaultSubjects.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectViewCell", for: indexPath) as? SubjectViewCell else {
//            return UICollectionViewCell()
//        }
//
//        if (indexPath.row < defaultSubjects.count) {
//            let subject = defaultSubjects[indexPath.row]
//            cell.configureCell(subject: subject)
//        }
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 16.0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 16.0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let size = (collectionView.frame.size.width - 16.0) / 2
//        return CGSize(width: size, height: size)
//    }
//}
