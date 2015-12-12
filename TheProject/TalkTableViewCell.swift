//
//  TalkTableViewCell.swift
//  TheProject
//
//  Created by Ramirez Szabo Rene Roberto on 12/10/15.
//  Copyright (c) 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class TalkTableViewCell: UITableViewCell {

  @IBOutlet weak var profileImages: UIImageView!
  @IBOutlet weak var userCreatorName: UILabel!
  @IBOutlet weak var talkTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
