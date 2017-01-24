//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by taeseong on 2017. 1. 21..
//  Copyright © 2017년 taeseong. All rights reserved.
//

import UIKit

class FormViewController : UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var updateLabel: UILabel!
    @IBOutlet var intervalLabel: UILabel!
    
    @IBAction func onSubmit(_ sender: AnyObject) {
        
        // let preVC = self.presentingViewController
        
        // guard let vc = preVC as? ViewController else {
        //    return
        // }
        
        // vc.paramEmail = self.email.text
        // vc.paramUpdate = self.isUpdate.isOn
        // vc.paramInterval = self.interval.value
        
        // self.presentingViewController?.dismiss(animated: true)
        
        /* AppDelete Code */
        
//        let ad = UIApplication.shared.delegate as? AppDelegate
//        
//        ad?.paramEmail = self.email.text
//        ad?.paramUpdate = self.isUpdate.isOn
//        ad?.paramInterval = self.interval.value
//        
//        self.presentingViewController?.dismiss(animated: true)
        
        let ud = UserDefaults.standard
        
        ud.set(self.email.text, forKey : "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")

        self.presentingViewController?.dismiss(animated: true)
        
        
    }
}
