//
//  UserVC+Delegate.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit
import SKActivityIndicatorView

extension UsersVC: UserView{
    
    func showIndicator() {
        
        SKActivityIndicator.show()
    }
    
    func hideIndicator() {
        
        SKActivityIndicator.dismiss()
    }
    
    func fetchDataSuccess() {
        tableView.reloadData()
    }
    
    func showError(error: String) {
        
        print("\(error)")
    }
    
    
    
}
