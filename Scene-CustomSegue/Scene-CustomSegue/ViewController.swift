//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by ren on 2017/01/06.
//  Copyright © 2017 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier! == "custom_segue") {
            NSLog("running custom segue")
        } else if (segue.identifier == "action_segue") {
            NSLog("running action segue")
        } else {
            NSLog("unknown segue")
        }
    }


}

