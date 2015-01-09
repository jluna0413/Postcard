//
//  ViewController.swift
//  Postcard
//
//  Created by JonathanLuna on 1/2/15.
//  Copyright (c) 2015 Luna Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButtonPressed(sender: UIButton) { 
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        NameLabel.hidden = false
        NameLabel.text = EnterNameTextField.text
        NameLabel.textColor = UIColor.blueColor()
        EnterNameTextField.text = ""
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
   
    

}

