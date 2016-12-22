//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by ren on 2016/12/12.
//  Copyright © 2016 ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveNext(_ sender: AnyObject) {
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        
        // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

