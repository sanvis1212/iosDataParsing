//
//  ViewController.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var userDataTableView: UITableView!
    
    //MARK:- All Propertise
    
    internal var user = [UserModel]()
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.setUpView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    
    //MARK:- View For Setup
    
    private func setUpView() {
        self.registerNibFiles()
        self.fetchUserData()
    }
    
    //MARK:- Register table view cell
    
    private func registerNibFiles(){
        let nib = UINib(nibName: "UserDataTableViewCell", bundle: nil)
        self.userDataTableView.register(nib, forCellReuseIdentifier: "UserDataTableViewCell")
    }
    
    //MARK:- Fetch UserData
    
    func fetchUserData(){
        APIManager.sharedInstance.getUserData(){
            (userJSON) ->Void in
            if userJSON != nil {
                for i in 0..<userJSON.count {
                    let singleUser = UserModel(jsonUser: userJSON[i])
                    self.user.append(singleUser)
                }
                DispatchQueue.main.async {
                    self.userDataTableView.reloadData()
                }
            }
        }
    }
}

