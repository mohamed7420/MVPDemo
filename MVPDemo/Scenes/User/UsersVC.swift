//
//  ViewController.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class UsersVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: UsersVCPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        presenter = UsersVCPresenter(view: self)
        presenter.viewDidLoad()
    }


}

