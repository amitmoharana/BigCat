//
//  BigCatTableViewCell.swift
//  BigCat
//
//  Created by Sidhartha Das on 13/02/21.
//

import UIKit

class BigCatTableViewCell: UITableViewCell {
    @IBOutlet var bigCatLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
