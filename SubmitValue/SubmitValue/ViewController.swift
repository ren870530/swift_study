//
//  ViewController.swift
//  SubmitValue
//
//  Created by ren on 2017/01/14.
//  Copyright © 2017 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }

    @IBAction func onPerformSegue(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분마다"
    }
    
    @IBAction func onSubmit(_ sender: AnyObject) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        // self.present(rvc, animated: true)
        self.navigationController?.pushViewController(rvc, animated: true)
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //목적지 뷰 컨트롤러 인스턴스 읽어오기
        let dest = segue.destination
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        // (dest as! ResultViewController).paramInterval.hashValue = 1;
    }
    
}

