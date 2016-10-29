//
//  ViewController.swift
//  ToDoList
//
//  Created by Ramon Schmitt on 28/10/2016.
//  Copyright © 2016 Ramon Schmitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var txtOutput: UITextView!
    
    var items:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addItem(_ sender: AnyObject) {
        if (txtInput.text! == "") {
            return
        }
        items.append(txtInput.text!)
        txtOutput.text = ""
        for item in items {
            txtOutput.text.append("\(item)\n")
        }
        txtInput.text = ""
        txtInput.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
