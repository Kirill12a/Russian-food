

import UIKit

class DrinkViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    
    @IBOutlet weak var clViewDrinks: UICollectionView!
    
    var itemList = CreateArrayThing()

    override func viewDidLoad() {
        super.viewDidLoad()
        itemList.drinksThings()
    }
    
//cellDrinks
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.drinks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellDrinks = clViewDrinks.dequeueReusableCell(withReuseIdentifier: "cellDrinks", for: indexPath) as? DrinksCollectionViewCell
        
        cellDrinks?.nameDrinks.text = itemList.drinks[indexPath.row].title
        cellDrinks?.imageDrinks.image = itemList.drinks[indexPath.row].image
        
        //view
        
        cellDrinks?.viewDrinks.layer.cornerRadius = 20
        cellDrinks?.viewDrinks.layer.borderWidth = 3
        cellDrinks?.viewDrinks.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        
        return cellDrinks!
    }

    @IBAction func exitVC(_ sender: Any) {
        let seguePrepare = PrepareNextScreenIdStorybard()
        seguePrepare.showScreen(storyBoardId: "MainAppViewController")
    }
}
