

import UIKit

class SendThingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
  

    @IBOutlet weak var sendCategory: UILabel!
    @IBOutlet weak var collectionViewVC: UICollectionView!
    
    var itemList = CreateArrayThing()

   
    override func viewDidLoad() {
        super.viewDidLoad()
            print("ВЫБРАНО МЯСО")
        itemList.appendReceptts()
        collectionViewVC.backgroundColor = .systemBlue
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.meatLits.count
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vc = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMeat", for: indexPath) as? MeatCollectionViewCell
        
        vc?.nameRecepts.text = itemList.meatLits[indexPath.row].title
        vc?.imageRecepts.image = itemList.meatLits[indexPath.row].image
        vc?.ViewAllCell.layer.cornerRadius = 30
        vc?.ViewAllCell.layer.borderWidth = 3
        vc?.ViewAllCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        
        return vc!
      }
    
    @IBAction func exitVc(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
}
          
