//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Frank Solleveld on 29/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis: [Emoji] = [
        Emoji(symbol: "🍏", name: "apple", description: "This is a shiny green apple.", usage: "When you are super happy to share a fruit with someone, this is the best choice."),
        Emoji(symbol: "🍟", name: "French fries", description: "Freshly baked French fries.", usage: "When you don't feel like eating healthy, this is the best choice."),
        Emoji(symbol: "😡", name: "Mad af", description: "This guy is mad because his code won't compile.", usage: "When you have spend several hours trying to fix a specifix bug and it still does not resolve the issue."),
        Emoji(symbol: "😬", name: "Cringy guy", description: "This face is cringing hard.", usage: "When you notice soemthing is really cringe you just wanna fade out."),
        Emoji(symbol: "🤯", name: "Exploded", description: "This person is really surprised and therefor his head is blown up.", usage: "When something so unexpectedly happend your head explodes."),
        Emoji(symbol: "👺", name: "Satan", description: "Meet Satan", usage: "When you want to show that you are a Satan worshipper."),
    ]   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.cellLayoutMarginsFollowReadableWidth = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return emojis.count
        } else {
            return 0
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
        cell.detailTextLabel?.text = emoji.description
        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print("\(emoji.symbol) + \(indexPath.row)")
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = emojis.remove(at: sourceIndexPath.row)
        emojis.insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    @IBAction func editButtontapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    
}
