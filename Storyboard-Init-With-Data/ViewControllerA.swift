// www.theswiftcook.wordpress.com

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goButtonAction(_ sender: Any) {
        /// LOGIC: Guard against shooting blank messages
        guard let message = textfield.text, !message.isEmpty else {
            print("message field is empty")
            return
        }
        
        /// LOGIC: Instantiate view controller B along with the message
        let vc = ViewControllerB.instantiate(with: message)
        present(vc, animated: true, completion: nil)
    }
}
