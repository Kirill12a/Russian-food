

import UIKit

class LikeReceptsViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegate{
    
    var arrayLikeName = ["Борщ","Щи","Салянка","Окрошка"]
    var arrayLikeImage = [UIImage(named: "Soup"), UIImage(named: "Soup"),UIImage(named: "Soup"),UIImage(named: "Soup")]
    
    @IBOutlet weak var clViewLike: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hiMa")
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayLikeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clViewLike.dequeueReusableCell(withReuseIdentifier: "cellLike", for: indexPath) as? LikeCollectionViewCell
        
        cell?.likeLabel.text = arrayLikeName[indexPath.row]
        cell?.likeImage.image = arrayLikeImage[indexPath.row]
        
        cell?.viewCell.layer.cornerRadius = 30
        cell?.viewCell.layer.borderWidth = 3
        cell?.viewCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)
        return cell!
    }
}
//cellLike
