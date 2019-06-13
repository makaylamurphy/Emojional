//
//  ViewController.swift
//  Emojional
//
//  Created by Makayla Murphy on 6/12/19.
//  Copyright © 2019 Makayla Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😃": "Be happy!", "😞": "I'm sorry you're sad!"]
    
    let customMessages = ["Be happy!": ["Hope you stay just this happy", "You're doing great, sweetie!", "lOvE uuuuu"], "I'm sorry you're sad!" : ["you'll get thru this!", "things will get better!!", "Everything will be okay!"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender : UIButton) {
        
        // when a user clicks an emoji, there needs to be a pop-up
        // that show "we all get EMOJInal" and a message in-line with the emoji
        
        let selectedEmotion = sender.titleLabel!.text!
        
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[Int.random(in: 0...2)]
        
        let alertContoller = UIAlertController(title: "Welcome to EMOJIonal", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertContoller.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertContoller, animated: true, completion: nil)
        
    }


}

