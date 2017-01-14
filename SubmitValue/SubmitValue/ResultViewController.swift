//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by ren on 2017/01/14.
//  Copyright © 2017 ren. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail : String = ""
    var paramUpdate : Bool = false
    var paramInterval : Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분마다 갱신"
    }
    
    @IBAction func onBack(_ sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
