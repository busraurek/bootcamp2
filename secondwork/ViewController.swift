//An operation that returns the result of the addition operation performed on the second screen to the first screen
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showResults(data:)), name: NSNotification.Name("ShowResult"), object: nil) //used transaction -> notification center
    }
    @objc func showResults(data: Notification){
        
        if let userInfo = data.userInfo{
            let result = userInfo["result"] as! Int
            self.labelResult.text = "RESULT:" + String(result)
        }
    }

}

