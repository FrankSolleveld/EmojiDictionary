//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Frank Solleveld on 30/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {

    var emoji: Emoji?
    @IBOutlet var symbolTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var usageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let emoji = emoji {
            symbolTextField.text = String(emoji.symbol)
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
        
        
    }

    // MARK: - Table view data source
    @IBAction func unwindToEmojiTableView(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}
