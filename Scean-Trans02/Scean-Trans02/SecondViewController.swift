//
//  SecondViewController.swift
//  Scean-Trans02
//
//  Created by ren on 2016/12/23.
//  Copyright © 2016 ren. All rights reserved.
//
import UIKit

class SecondViewController : UIViewController {
    
    @IBAction func back(_ sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
