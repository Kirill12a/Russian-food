
import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionViewVC: UICollectionView!
    
    //    var itemList = [CategoryElements]()

    var itemList = CreateArrayThing()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //элементы массива 
        itemList.appendEllementsThing()
    }
    
     //MARK: Кол во cell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.itemList.count
    }

     //MARK: Заполнение ячейки
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vc = collectionViewVC.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? CLCollectionViewCell
        
        
        //цвет лэйбла по индексу; решил не делать так, потом удалю
        switch indexPath.row {
        case 0: break
//            vc?.titleCT.textColor = .green
        default:
            print("FD")
        }
        //
        
        vc?.titleCT.text = itemList.itemList[indexPath.row].titile
        
        vc?.imageCT.image = itemList.itemList[indexPath.row].image
        //        vc?.countCT.text = itemList[indexPath.row].count
        vc?.countCT.text = "количество элементов \(itemList.itemList[indexPath.row].count)"
        vc?.viewCT.layer.cornerRadius = 30
        vc?.imageCT.layer.cornerRadius = 30
        vc?.viewCT.layer.borderWidth = 0 // было 5
        
        return vc!
    }
    
    
     //MARK:Нажатие на ячейку(Анимация)
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionViewVC.cellForItem(at: indexPath) as? CLCollectionViewCell
        //        print("Touch \(cell?.titleCT)")
        
        
        UIView.animate(withDuration: 0.5,
                       animations: {
                        //Fade-out
                        cell?.alpha = 0.5
                       }) { (completed) in
            UIView.animate(withDuration: 0.5,
                           animations: {
                            //Fade-out
                            cell?.alpha = 1
                           })
        }
        
        print(" ячейка равна\(indexPath.row)")
       //попробывать сделать switch по индексу и переходить на viewController по индексу
     

        //Переход к VC
        let segueFunc = PrepareNextScreenIdStorybard() // ссылка на класс с переходом к новому UIview без navController
        switch indexPath.row {
        case 0: segueFunc.showScreen(storyBoardId: "MeatVC")
        case 1: segueFunc.showScreen(storyBoardId: "FastEatViewController")
        case 2: segueFunc.showScreen(storyBoardId: "SaladViewController")
        case 3: segueFunc.showScreen(storyBoardId: "SoupViewController")
        case 4: segueFunc.showScreen(storyBoardId: "DrinkViewController")
        case 5: segueFunc.showScreen(storyBoardId: "SweetsViewController")
        default: print("error")}
        
    }

    
    //https://lolz.guru/threads/2413948/#post-24639926
}


// создать красту для ячеек, начать с освноного экрана и потом постепенно идти по всем экранам

