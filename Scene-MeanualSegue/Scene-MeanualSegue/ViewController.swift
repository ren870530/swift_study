//
//  ViewController.swift
//  Scene-MeanualSegue
//
//  Created by ren on 2017/01/05.
//  Copyright © 2017 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func wind(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

