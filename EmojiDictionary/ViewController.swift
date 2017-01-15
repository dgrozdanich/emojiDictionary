//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Dylan Grozdanich on 1/13/17.
//  Copyright © 2017 Dylan Grozdanich. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiDictionary: UITableView!
    
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        emojiDictionary.dataSource = self
        emojiDictionary.delegate = self
        emojis = makeEmojiArry()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        print(indexPath.row)
        let cell = UITableViewCell ()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt
    indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! emojiDefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😽"
        emoji1.birthYear = 2010
        emoji1.category = "Animal Smilies"
        emoji1.definition = "A kissing cat face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤔"
        emoji2.birthYear = 2010
        emoji2.category = "Smilies"
        emoji2.definition = "A thinking face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2010
        emoji3.category = "Smilies"
        emoji3.definition = "A Poo Face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😴"
        emoji4.birthYear = 2010
        emoji4.category = "Smilies"
        emoji4.definition = "A sleepy face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😜"
        emoji5.birthYear = 2010
        emoji5.category = "Smilies"
        emoji5.definition = "A winking face with tongue out"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😀"
        emoji6.birthYear = 2010
        emoji6.category = "Smilies"
        emoji6.definition = "A smiling face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]

}

}
