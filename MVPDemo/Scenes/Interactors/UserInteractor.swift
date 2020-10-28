//
//  UserInteractor.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

class UserInteractor{
    
    
    func getUsers(completion: @escaping ([User]? , Error?)->()){
        
        let session = URLSession.shared
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        session.dataTask(with: url) { (data, response, error) in
            if error != nil{
                print(error!.localizedDescription)
                return
            }
            
            if let data = data{
               
                let users = try! JSONDecoder().decode([User].self, from: data)
                completion(users , nil)
                
            }else{
                completion(nil , error)
            }
        }.resume()
        
    }
}
