//
//  UsersVCPresenter.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

protocol UserView: class{
    
    func showIndicator()
    func hideIndicator()
    func fetchDataSuccess()
    func showError(error: String)
}

protocol UserCellView {
    
    func displayName(name: String)
    func displayEmail(email: String)
    func displayAddress(address: String)
}

class UsersVCPresenter{

    private weak var view: UserView?
    private let interactor = UserInteractor()
    private var users = [User]()
    
    init(view: UserView) {
        self.view = view
    }
    
    func viewDidLoad(){
        getUsers()
    }
    
    func getUsers(){
        
        view?.showIndicator()
        interactor.getUsers { [weak self] users, error in
            guard let self = self else {return}
            self.view?.hideIndicator()
            if let error = error{
                self.view?.showError(error: error.localizedDescription)
            }else{
                guard let users = users else {return}
                self.users = users
                self.view?.fetchDataSuccess()
            }
        }
    }
    
    func getUsersCount() -> Int{
        
        return users.count
    }
    
    func configureCell(userView: UserCellView , index: Int){
        
        let user = users[index]
        userView.displayName(name: user.name)
        userView.displayEmail(email: user.email)
        userView.displayAddress(address: "\(user.address.street) , \(user.address.suite)")
    }
}
