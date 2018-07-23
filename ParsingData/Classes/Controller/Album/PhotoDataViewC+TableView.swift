//
//  PhotoDataViewC+TableView.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

//MARK:- UITableViewDelegate

extension PhotoDataViewC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

//MARK:- UITableViewDataSource

extension PhotoDataViewC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.album.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getPhotoData(tableView,indexPath)
    }
    
    private func getPhotoData(_ tableView: UITableView,_ indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoTableViewCell", for: indexPath) as? PhotoTableViewCell else {
            fatalError(ConstantTexts.unexpectedIndexPath.rawValue)
        }
        let details = album[indexPath.row]
        let url = URL(string: details.url!)
        cell.albumImageView.af_setImage(withURL: url!)
        cell.titleLabel.text = details.title
        return cell
    }

}
