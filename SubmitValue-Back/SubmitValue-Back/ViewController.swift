//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by taeseong on 2017. 1. 21..
//  Copyright © 2017년 taeseong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!

    var paramEmail : String?
    var paramUpdate : Bool?
    var paramInterval : Double?
    
    //화면이 표시될 때마다 호출되는 메소드
    override func viewWillAppear(_ animated: Bool) {
//        if let email = paramEmail {
//            resultEmail.text = email
//        }
//        if let update = paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
//        }
//        if let interval = paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
        
        // AppDelete code
        
//        let ad = UIApplication.shared.delegate as? AppDelegate
//        
//        if let email = ad?.paramEmail {
//            resultEmail.text = email
//        }
//        
//        if let update = ad?.paramUpdate {
//            resultUpdate.text = update ? "자동갱신" : "자동갱신안함"
//        }
//        
//        if let interval = ad?.paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
        
        // UserDefaults
        
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = update ? "auto refresh" : "non auto refresh"
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
        
    }
    

}

