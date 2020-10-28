//
//  UsersTableViewCell.swift
//  MVPDemo
//
//  Created by Mohamed on 10/27/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell , UserCellView {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAdress: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func displayName(name: String) {
          
        labelName.text = name
      }
      
      func displayEmail(email: String) {
          
        labelEmail.text = email
      }
      
      func displayAddress(address: String) {
          
        labelAdress.text = address
      }
      
}
