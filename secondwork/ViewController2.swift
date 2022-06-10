import UIKit
class ViewController2: UIViewController{
    
    @IBOutlet weak var textNum1: UITextField!
    @IBOutlet weak var textNum2: UITextField!
    @IBAction func result(_sender: Any){
        
        let result = Int(textNum1.text!)! + Int(textNum2.text!)! //the function that performs the addition
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ShowResult"), object: nil, userInfo: ["result":result])
        self.dismiss(animated: true, completion: nil)
    }

  override func viewDidLoad(){
    super.viewDidLoad()
}
}
