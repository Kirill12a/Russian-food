

import UIKit

class FastEatViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    

    @IBOutlet weak var sendThing: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemList = CreateArrayThing()

    override func viewDidLoad() {
        super.viewDidLoad()
        sendThing.text = "Hiii"
        itemList.fastEatThings()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.fastEat.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FastEatCollectionViewCell
        
        cell?.fastEatName.text = itemList.fastEat[indexPath.row].title
        cell?.imgeFastEat.image = itemList.fastEat[indexPath.row].image
        
        return cell!
    }
    @IBAction func exitVc(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
}
