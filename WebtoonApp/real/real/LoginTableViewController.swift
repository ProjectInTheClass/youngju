//
//  LoginTableViewController.swift
//  real
//
//  Created by GW_14 on 22/07/2020.
//  Copyright © 2020 GW_14. All rights reserved.
//

import UIKit

var gModelUser: UserModel? = nil

class LoginTableViewController: UITableViewController
{
    @IBAction func dismissModal(sender: AnyObject){
        
        gModelUser = UserModel(name: "아무개")
        
        self.dismiss(animated: true, completion: nil)
    }
}
