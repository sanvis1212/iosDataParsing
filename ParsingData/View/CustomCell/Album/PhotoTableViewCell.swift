//
//  PhotoTableViewCell.swift
//  ParsingData
//
//  Created by Sandeep_Vishwakarma on 7/23/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK:- Awake Function
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
