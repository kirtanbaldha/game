import UIKit

var QuestionArray  = ["1 + 1","2 + 6","3 + 9","5 + 3","8 + 2"]
var QuestionRandom = QuestionArray.randomElement()
var answerArray = [[2],[8],[12],[8],[10]]
var answerRandom = answerArray.randomElement()

class FirstPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   

    var arrayForSell : [Int] = []
    @IBOutlet weak var cv: UICollectionView!
    var arr = Array<String>()
    @IBOutlet weak var QuestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<3{
            let random = Int.random(in :0...100)
            arrayForSell.append(random)
        }
        print(QuestionRandom)
        QuestionLabel.text = "\(QuestionRandom!)"
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 85, height: 85)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
    }
    
}
    
    

    



