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
    
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        
        if emoji == "😽" { definitionLabel.text = "A Kissing Cat"
        }
        if emoji == "😀" { definitionLabel.text = "A Smiling Face"
        }
        if emoji == "🤔" { definitionLabel.text = "A Thinking Face"
        }
        if emoji == "💩" { definitionLabel.text = "A Piece of Poop"
        }
        if emoji == "😜" { definitionLabel.text = "A Face Winking with Tongue Out"
        }
        if emoji == "😴" { definitionLabel.text = "A Sleepy Face"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
