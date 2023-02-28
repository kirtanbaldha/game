import UIKit

var QuestionArray  = ["1 + 1","2 + 6","3 + 9","5 + 3","8 + 2"]
var answerArray = [[2],[8],[12],[8],[10]]
var QuestionRandom = QuestionArray.randomElement()
var arr = Array<String>()

class FirstPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {


    @IBOutlet weak var QuestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(QuestionRandom)
        QuestionLabel.text = "\(QuestionRandom!)"
     
            
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
        return cell
    }
    
    }
    



