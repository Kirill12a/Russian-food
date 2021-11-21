

import UIKit

class SweetsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    
    @IBOutlet weak var sweetsCV: UICollectionView!
    var itemList = CreateArrayThing()

    override func viewDidLoad() {
        super.viewDidLoad()

        itemList.sweetsThings()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.sweets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vcSweets = sweetsCV.dequeueReusableCell(withReuseIdentifier: "cellSweet", for: indexPath) as? SweetsCollectionViewCell
        vcSweets?.nameSweets.text = itemList.sweets[indexPath.row].title
        vcSweets?.imageSweets.image = itemList.sweets[indexPath.row].image
        
        //view
        
        vcSweets?.viewSweets.layer.cornerRadius = 25
        vcSweets?.viewSweets.layer.borderWidth = 3
        vcSweets?.viewSweets.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        
        return vcSweets!
    }

    @IBAction func exitVC(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
}
