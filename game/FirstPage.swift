import UIKit

var QuestionArray  = ["1 + 1","2 + 6","3 + 9","5 + 3","8 + 2","11+2","13+2","5+9"]

var answerArray = ["2","8","12","8","10","13","15","14"]
var answerRandom = answerArray.shuffled()

class FirstPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    var QuestionRandom = QuestionArray.shuffled()

    
    var arrayForSell : [Int] = []
    @IBOutlet weak var cv: UICollectionView!
    var arr = Array<String>()
    @IBOutlet weak var QuestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for i in 0..<4{
//            let random = Int.random(in :0...100)
//            arrayForSell.append(random)
//        }
//        print(QuestionRandom)
//
      
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        QuestionLabel.text = QuestionRandom.randomElement()
        
        
         // QuestionLabel.text = QuestionArray[1]
            
                 // cell.labelForAnswer.text = answerArray[1]
//                  cell.labelForAnswer.text = answerArray[2],
//                  cell.labelForAnswer.text = answerArray[3],
//                    cell.labelForAnswer.text = answerArray[0]
//
        
        
        
        
        
        
        
        
        
        
        
        //else if  QuestionLabel.text == QuestionArray[5]{
         //   cell.labelForAnswer.text = "\(answerArray.randomElement())"
       //        cell.labelForAnswer.text = answerArray[]
        
//        if QuestionLabel.text == QuestionArray[0]{
//            cell.labelForAnswer.text = answerArray[0]
//            cell.labelForAnswer.text = answerArray[1]
//            cell.labelForAnswer.text = answerArray[2]
//            cell.labelForAnswer.text = answerArray[3]
//        }
//       else if QuestionLabel.text == QuestionArray[1]{
//            cell.labelForAnswer.text = answerArray[0]
//            cell.labelForAnswer.text = answerArray[1]
//            cell.labelForAnswer.text = answerArray[2]
//            cell.labelForAnswer.text = answerArray[3]
//        }
//        else if QuestionLabel.text == QuestionArray[2]{
//             cell.labelForAnswer.text = answerArray[0]
//             cell.labelForAnswer.text = answerArray[1]
//             cell.labelForAnswer.text = answerArray[2]
//             cell.labelForAnswer.text = answerArray[3]
//         }
//        else if QuestionLabel.text == QuestionArray[3]{
//             cell.labelForAnswer.text = answerArray[0]
//             cell.labelForAnswer.text = answerArray[1]
//             cell.labelForAnswer.text = answerArray[2]
//             cell.labelForAnswer.text = answerArray[3]
//         }
//        else if QuestionLabel.text == QuestionArray[4]{
//             cell.labelForAnswer.text = answerArray[0]
//             cell.labelForAnswer.text = answerArray[1]
//             cell.labelForAnswer.text = answerArray[2]
//             cell.labelForAnswer.text = answerArray[3]
//         }
//
        
        cell.labelForAnswer.text = answerRandom.randomElement()
        
        
        
      
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 154, height: 156)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        collectionView.reloadData()
        //cell.labelForAnswer.text = answerArray[indexPath.row]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
    
    

    



