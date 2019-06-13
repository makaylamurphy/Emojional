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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender : UIButton) {
        
        // when a user clicks an emoji, there needs to be a pop-up
        // that show "we all get EMOJInal" and a message in-line with the emoji
        
        let selectedEmotion = String(sender.titleLabel!.text!)
        
        let alertContoller = UIAlertController(title: "Welcome to EMOJIonal", message: emojis[selectedEmotion]!, preferredStyle: UIAlertController.Style.alert)
        alertContoller.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertContoller, animated: true, completion: nil)
        
    }


}

