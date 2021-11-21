

import UIKit

class SoupViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var clView: UICollectionView!
    var itemList = CreateArrayThing()

    override func viewDidLoad() {
        super.viewDidLoad()

        itemList.soupThings()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.soup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellSoupe = clView.dequeueReusableCell(withReuseIdentifier: "cellSoupe", for: indexPath) as? SoupeCollectionViewCell
        
        cellSoupe?.nameSoupe.text = itemList.soup[indexPath.row].title
        
        cellSoupe?.imageSoupe.image = itemList.soup[indexPath.row].image
        
        cellSoupe?.viewSoupe.layer
            .cornerRadius = 20
        cellSoupe?.viewSoupe.layer
            .borderWidth = 3
        cellSoupe?.viewSoupe.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        
        return cellSoupe!
    }
    
    

    @IBAction func exitVc(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
    

}
