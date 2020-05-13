//
//  ResturantTableViewCell.swift
//  Test
//
//  Created by Apple on 13/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ResturantTableViewCell: UITableViewCell {

    @IBOutlet var logoImgView: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    
    @IBOutlet var addressLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
