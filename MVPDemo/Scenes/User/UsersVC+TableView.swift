//
//  UsersVC+TableView.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

extension UsersVC: UITableViewDelegate , UITableViewDataSource{
    
    func setupTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Users"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "UsersTableViewCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return presenter.getUsersCount()
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersTableViewCell", for: indexPath) as! UsersTableViewCell
        presenter.configureCell(userView: cell, index: indexPath.row)
        return cell
    }
    
    
    
    
}
