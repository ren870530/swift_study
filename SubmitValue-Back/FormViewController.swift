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
        
        let preVC = self.presentingViewController
        
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
        
    }
}
