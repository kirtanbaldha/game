
import UIKit

class startingPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func EasyButtonAction(_ sender: UIButton) {
        navigat()
    }
    func navigat (){
        let navigationForEasyPage = storyboard?.instantiateViewController(withIdentifier: "FirstPage") as! FirstPage
        navigationController?.pushViewController(navigationForEasyPage, animated: true)
    }
    
        

    
}
