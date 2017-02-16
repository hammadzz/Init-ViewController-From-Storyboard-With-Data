// www.theswiftcook.wordpress.com

import UIKit

class ViewControllerB: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    var message: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Label
        if let messageStr = message {
            label.text = messageStr
        }
        else {
            label.text = "No message recieved"
        }
    }
    
    /// LOGIC: Static function to instantiate this view controller with a message
    internal static func instantiate(with message: String) -> ViewControllerB {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerB") as! ViewControllerB
        vc.message = message
        
        return vc
    }
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
