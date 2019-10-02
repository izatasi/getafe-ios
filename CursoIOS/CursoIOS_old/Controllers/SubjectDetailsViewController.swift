//
//  SubjectDetailsViewController.swift
//  CursoIOS
//
//  Created by Paulo Galeano on 27/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//

import UIKit

class SubjectDetailsViewController: UIViewController {
    
    
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
    
    var subject: Subject?
    

//************* pasting **** command-v ******************
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //configureCollectionView()
            
            
        }
    
    func configure(image: String?) {
        guard let imageData = image else {
            headerImage.image = nil
            return
        }
        
        headerImage.image = UIImage(named: imageData)
    }
    
    func configure(title: String?) {
        headerTitle.text = title
    }
    
    func configure(subtitle: String?) {
        headerSubtitle.text = subtitle
    }
    
    func configure(dataTitle1: String?) {
        //teachers
        data1Title.text = dataTitle1
    }
    
    func configure(dataTitle2: String?) {
        //students
        data2Title.text = dataTitle2
    }
}

extension DetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func configureCollectionViewTeachers() {
        data1CollectionView.dataSource = self
        data1CollectionView.delegate = self
        data1CollectionView.tag = 0
    }

    func configureCollectionViewStudents() {
        data2CollectionView.dataSource = self
        data2CollectionView.delegate = self
        data2CollectionView.tag = 1

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         switch collectionView.tag {
            case 0:
                return subject?.teachers.count ?? 0

            case 1:
                return subject?.students.count ?? 0
        
            default:
                return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailViewCell", for: indexPath) as? SubjectViewCell else {
                       return UICollectionViewCell()
                }
        
        switch collectionView.tag {
           case 0:
            
            if (indexPath.row < data?.teachers.count ?? false) {
                let teacher = data?.teachers[indexPath.row]
                cell.configureCell(label: )
                }
                return cell
            
            case 1:
              
              if (indexPath.row < data?.students.count ?? false) {
                  let teacher = data?.students[indexPath.row]
                      cell.configureCell(subject: subject)
                  }
                  return cell
            
        default:
            break
         }
    
   }

}
