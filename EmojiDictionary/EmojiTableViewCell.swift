//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Frank Solleveld on 30/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet var symbolLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func update(with emoji: Emoji){
        symbolLabel.text = "\(emoji.symbol)"
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
