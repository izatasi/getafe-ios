//
//  TeacherViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//
//  By: Paulo Galeano

import UIKit

class TeachersViewContoller: UIViewController {
    
    // MARK: = IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
}
    
extension TeachersViewContoller: UITableViewDataSource, UITableViewDelegate {
    //Configure
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherViewCell",
                                                       for: indexPath) as? TeacherViewCell else {
            return UITableViewCell()
        }
        
        if (indexPath.row < defaultTeachers.count) {
            let teacher = defaultTeachers[indexPath.row]
            cell.configureCell(teacher: teacher)
        }
        return cell
    }
    
}
