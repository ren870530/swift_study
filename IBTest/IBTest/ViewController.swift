//
//  ViewController.swift
//  IBTest
//
//  Created by ren on 2016/12/08.
//  Copyright © 2016 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func clickBtn02(_ sender: AnyObject) {
        self.uiTitle02.text = "Button02 clicked"
    }
    @IBOutlet var uiTitle02: UILabel!
    
    @IBAction func clickBtn01(_ sender: AnyObject) {
        self.uiTitle01.text = "Button01 clicked"
    }
    @IBOutlet var uiTitle01: UILabel!
    
    @IBOutlet var uiTitle03: UILabel!
    
    
    
    @IBAction func clickBtn03(_ sender:
        AnyObject) {
        self.uiTitle03.text = "Button03 clicked"
    }
    
    @IBOutlet var uiTitle04: UILabel!
    @IBAction func clickBtn04(_ sender: AnyObject) {
        self.uiTitle04.text = "Button04 clicked"
    }
    
    
    @IBOutlet var uiTitle05: UILabel!
    @IBAction func clickBtn05(_ sender: AnyObject) {
        self.uiTitle05.text = "Button05 clicked"
    }
}

