//
//  Service.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class APIManager {
    
    // APImanageer shared instance
    
    static var sharedInstance = APIManager()
    
    private init() {
        
    }
    
    //MARK:- User Api
    
    //TODO:- Get user data
    
    func getUserData(onCompletion:@escaping (JSON)-> Void){
        Alamofire.request(ConstantTexts.userData.rawValue , method: .get ).responseJSON{ response in
            switch response.result {
            case .success(let data):
                let userData = JSON(data)
                onCompletion(userData)
            case .failure(let error):
                onCompletion(nil)
            }
        }
    }
    
    //TODO:- Get photo album
    
    func getPhotoAlbum(onCompletion:@escaping (JSON) -> Void) {
        Alamofire.request(ConstantTexts.photoData.rawValue , method: .get).responseJSON{
            (response) in
            switch response.result {
            case.success(let data):
                let photoData = JSON(data)
                onCompletion(photoData)
            case.failure(let error):
                onCompletion(nil)
            }
        }
    }
}














