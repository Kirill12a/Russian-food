
import UIKit

class SaladViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    
    var itemList = CreateArrayThing()

//    saladsImage
//    nameSalads
    
    @IBOutlet weak var clView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        itemList.saladsThings()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.salads.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vc = clView.dequeueReusableCell(withReuseIdentifier: "cellSal", for: indexPath) as? SaladsCollectionViewCell
        
        vc?.nameSalads.text = itemList.salads[indexPath.row].title
        vc?.saladsImage.image = itemList.salads[indexPath.row].image
        vc?.viewcell.layer.cornerRadius = 20
        vc?.viewcell.layer.borderWidth = 2
        vc?.viewcell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        return vc!
    }
    
    @IBAction func exitVc(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
    
}
