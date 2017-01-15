//
//  emojiDefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Dylan Grozdanich on 1/13/17.
//  Copyright © 2017 Dylan Grozdanich. All rights reserved.
//

import UIKit

class emojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthLabel.text = "Birthyear: \(emoji.birthYear)"
        category.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
