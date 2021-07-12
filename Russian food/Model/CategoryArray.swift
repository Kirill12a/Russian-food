//
//  CategoryArray.swift
//  Russian food
//
//  Created by Kirill Drozdov on 12.07.2021.
//

import Foundation
import UIKit


class CreateArrayThing{
var itemList = [CategoryElements]()
    
    
    func appendEllementsThing(){
        let item: CategoryElements = CategoryElements(titile: "Мясо", count: "30", image: UIImage(named: "Unknown")!)
        itemList.append(item)
        
        let item2: CategoryElements = CategoryElements(titile: "Закуски", count: "43", image: UIImage(named: "category")!)
        itemList.append(item2)
        let item3: CategoryElements = CategoryElements(titile: "Напитки", count: "43", image: UIImage(named: "home")!)
        itemList.append(item3)
        let item4: CategoryElements = CategoryElements(titile: "Супы", count: "32", image: UIImage(named: "home")!)
        itemList.append(item4)
        let item5: CategoryElements = CategoryElements(titile: "Сладости", count: "32", image: UIImage(named: "home")!)
        itemList.append(item5)
        let item6: CategoryElements = CategoryElements(titile: "Напитки", count: "32", image: UIImage(named: "home")!)
        itemList.append(item6)
        
    }

}
