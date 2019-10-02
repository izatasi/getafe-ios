//
//  StudentsViewController.swift
//  CursoiOS
//
//  Created by David Jardón on 25/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


class StudentsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

}

extension StudentsViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? StudentDetailViewController,
              let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell) else {
            return
        }

        destination.student = defaultStudents[indexPath.row]
    }
}

extension StudentsViewController: UITableViewDataSource, UITableViewDelegate {
    
    /// Configure tableView with default options
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


