//
//  ViewController.swift
//  Scean-Trans02
//
//  Created by ren on 2016/12/23.
//  Copyright © 2016 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func moveByNavi(_ sender: AnyObject) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        self.navigationController?.pushViewController(uvc, animated: true);
    }
    
    @IBAction func movePresent(_ sender: AnyObject) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        self.present(uvc, animated: true)
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

