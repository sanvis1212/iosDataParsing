//
//  PhotoDataViewC.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class PhotoDataViewC: UIViewController {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var photoTableView: UITableView!
    
    //MARK:- All Propertise
    
    var album = [PhotoModel]()
    
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK:- Set Up View
    
    
    private func setUpView() {
        self.registerNibFile()
        self.getPhotoData()
    }
    
    //MARK:- Register nib file
    
    private func registerNibFile(){
        let nibFile = UINib(nibName: "PhotoTableViewCell", bundle: nil)
        self.photoTableView.register(nibFile, forCellReuseIdentifier: "PhotoTableViewCell")
    }
    
    private func getPhotoData() {
        APIManager.sharedInstance.getPhotoAlbum { (photoJSON)  in
            if photoJSON != nil {
                for i in 0..<photoJSON.count {
                    let picture = PhotoModel(photoJSON: photoJSON[i])
                    self.album.append(picture)
                }
                DispatchQueue.main.async {
                    self.photoTableView.reloadData()
                }
            }
        }
    }
}
