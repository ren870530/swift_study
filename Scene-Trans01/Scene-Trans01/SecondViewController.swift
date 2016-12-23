import UIKit

class SecondViewContoller : UIViewController {
    
    @IBAction func dismiss(_ sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    
}
