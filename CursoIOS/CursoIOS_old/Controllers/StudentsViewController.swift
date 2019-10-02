//
//  StudentViewController.swift
//  CursoIOS
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 iZatasi. All rights reserved.
//
//  By: Paulo Galeano

import UIKit

class StudentsViewContoller: UIViewController {
    
    // MARK: = IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
}
    
extension StudentsViewContoller: UITableViewDataSource, UITableViewDelegate {
    //Configure
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudentViewCell",
                                                       for: indexPath) as? StudentViewCell else {
            return UITableViewCell()
        }
        
        if (indexPath.row < defaultStudents.count) {
            let student = defaultStudents[indexPath.row]
            cell.configureCell(student: student)
        }
        return cell
    }
    
}
