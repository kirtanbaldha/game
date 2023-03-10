
import UIKit

class startingPage: UIViewController {
    @IBOutlet weak var EasybuttonAction: UIButton!
    @IBOutlet weak var MediumButtonAction: UIButton!
    @IBOutlet weak var HardButtonAction: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        EasybuttonAction.layer.cornerRadius = 25
        MediumButtonAction.layer.cornerRadius = 25
        HardButtonAction.layer.cornerRadius = 25
    }
    
    @IBAction func EasyButtonAction(_ sender: UIButton) {
        navigat()
    }
    func navigat (){
        let navigationForEasyPage = storyboard?.instantiateViewController(withIdentifier: "FirstPage") as! FirstPage
        navigationController?.pushViewController(navigationForEasyPage, animated: true)
    }
    
        

    
}
