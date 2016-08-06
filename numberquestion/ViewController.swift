//
//  ViewController.swift
//  numberquestion
//
//  Created by Admin on 8/2/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    
    @IBAction func save(_ sender: AnyObject) {
    
        UserDefaults.standard.set(numberField.text, forKey: "number")
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let numberObject = UserDefaults.standard.object(forKey:"number")
        
        if let number = numberObject as? String {
        
            numberField.text = number
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
