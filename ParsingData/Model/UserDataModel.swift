//
//  File.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import SwiftyJSON
import AlamofireImage

class UserModel{
    
    var userId: String?
    var id: String?
    var title: String?
    var completedStatus: String?
    
    init(jsonUser: JSON) {
        self.userId = jsonUser["userId"].stringValue
        self.id = jsonUser["id"].stringValue
        self.title = jsonUser["title"].stringValue
        self.completedStatus = jsonUser["completed"].stringValue
    }
}

class PhotoModel {
    var albumId: String?
    var id: String?
    var title: String?
    var url: String?
    var thumbUrl: String?
    
    init(photoJSON:JSON) {
        self.albumId = photoJSON["albumId"].stringValue
        self.id = photoJSON["id"].stringValue
        self.title = photoJSON["title"].stringValue
        self.url = photoJSON["url"].stringValue
        self.url = photoJSON["thumbnailUrl"].stringValue
    }
}
