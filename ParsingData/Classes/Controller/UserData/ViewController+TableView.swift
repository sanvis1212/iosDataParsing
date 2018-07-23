//
//  ViewController+TableView.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import UIKit

//MARK:- UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 152
    }
}

//MARK:- UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getUserData(tableView,indexPath)
    }
    
    private func getUserData(_ tableView: UITableView,_ indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserDataTableViewCell", for: indexPath) as? UserDataTableViewCell else {
            fatalError(ConstantTexts.unexpectedIndexPath.rawValue)
        }
        let userData =  user[indexPath.row]
        if self.user != nil {
            cell.userIdLabel.text = userData.userId
            cell.idLabel.text  = userData.id
            cell.titleLable.text = userData.title
            cell.statusLabel.text = userData.completedStatus
        }
        else {
            print("Uncaught exception")
        }
        return cell
    }
    
}
