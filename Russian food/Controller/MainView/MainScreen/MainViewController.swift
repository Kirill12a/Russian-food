

import UIKit
import Foundation
//cellMain

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var array = ["Drecyh","rewqr","Drecyh","rewqr","Drecyh","rewqr","Drecyh","rewqr","Drecyh","rewqr","Drecyh","rewqr"]
    var image = [UIImage(named: "Meat"),                    UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat"),
                 UIImage(named: "Meat")]
    
    
    @IBOutlet weak var clRecomendations: UICollectionView!
    @IBOutlet weak var clViewCategory: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clViewCategory.dequeueReusableCell(withReuseIdentifier: "cellMain", for: indexPath) as? MainScreenCollectionViewCell
        
        cell?.labelRecepts.text = array[indexPath.row]
        cell?.imageRecepts.image = image[indexPath.row]
        cell?.viewCell.layer.cornerRadius = 30
        cell?.viewCell.layer.borderWidth = 3
        cell?.viewCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        
        let cellRec = clRecomendations.dequeueReusableCell(withReuseIdentifier: "cellRecomenation", for: indexPath) as? RecomendationsCollectionViewCell
        
        cellRec?.imageRecomentations.image = image[indexPath.row]
        cellRec?.labelRecomendations.text = array[indexPath.row]
        
        cellRec?.viewRecomendations.layer.cornerRadius = 30
        cellRec?.viewRecomendations.layer.borderWidth = 3
        cellRec?.viewRecomendations.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        
        var arasf = [cell, cellRec]
        
        return arasf.randomElement()!!
        //     return cell!
    }
}
