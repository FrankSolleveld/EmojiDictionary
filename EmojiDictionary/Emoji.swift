//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Frank Solleveld on 29/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import Foundation

struct Emoji {
    var symbol: Character
    var name: String
    var description: String
    var usage: String
    
    init(symbol: Character, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
