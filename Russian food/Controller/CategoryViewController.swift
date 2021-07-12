//
//  CategoryViewController.swift
//  Russian food
//
//  Created by Kirill Drozdov on 12.07.2021.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionViewVC: UICollectionView!
    
    //    var itemList = [CategoryElements]()

    var itemList = CreateArrayThing()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        itemList.appendEllementsThing()
        //        let item: CategoryElements = CategoryElements(titile: "Мясо", count: "30", image: UIImage(named: "Unknown")!)
        //        itemList.append(item)
        //
        //        let item2: CategoryElements = CategoryElements(titile: "Закуски", count: "43", image: UIImage(named: "category")!)
        //        itemList.append(item2)
        //        let item3: CategoryElements = CategoryElements(titile: "Напитки", count: "43", image: UIImage(named: "home")!)
        //        itemList.append(item3)
        //        let item4: CategoryElements = CategoryElements(titile: "Супы", count: "32", image: UIImage(named: "home")!)
        //        itemList.append(item4)
        //        let item5: CategoryElements = CategoryElements(titile: "Сладости", count: "32", image: UIImage(named: "home")!)
        //        itemList.append(item5)
        //        let item6: CategoryElements = CategoryElements(titile: "Напитки", count: "32", image: UIImage(named: "home")!)
        //        itemList.append(item6)
        //
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //          return itemList.count
        
        return itemList.itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vc = collectionViewVC.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? CLCollectionViewCell
        vc?.titleCT.text = itemList.itemList[indexPath.row].titile
        vc?.imageCT.image = itemList.itemList[indexPath.row].image
        //        vc?.countCT.text = itemList[indexPath.row].count
        vc?.countCT.text = itemList.itemList[indexPath.row].count
        vc?.viewCT.layer.cornerRadius = 30
        vc?.viewCT.layer.borderWidth = 5
        
        
        
        return vc!
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionViewVC.cellForItem(at: indexPath) as? CLCollectionViewCell
        //        print("Touch \(cell?.titleCT)")
        
        //Briefly fade the cell on selection
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
     
        
        
        
        
        
        
    }
    
    
    
}


