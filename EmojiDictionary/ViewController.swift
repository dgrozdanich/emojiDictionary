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
    
    
    var emojis = ["😀","😜","🤔","😴","💩","😽"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        emojiDictionary.dataSource = self
        emojiDictionary.delegate = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell ()
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

