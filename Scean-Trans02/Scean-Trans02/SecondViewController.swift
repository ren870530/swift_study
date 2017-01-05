//
//  SecondViewController.swift
//  Scean-Trans02
//
//  Created by ren on 2016/12/23.
//  Copyright © 2016 ren. All rights reserved.
//
import UIKit

class SecondViewController : UIViewController {
    
    @IBAction func moveToThird(_ sender: AnyObject) {
        let uvc = self.storyboard?.instantiateViewController(withIdentifier: "thirdVC");
         self.navigationController?.pushViewController(uvc!, animated: true);
    }
    
    @IBAction func back(_ sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func back2(_ sender: AnyObject) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
}
