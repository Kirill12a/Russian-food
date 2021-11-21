

import Foundation
import UIKit


class CreateArrayThing{
var itemList = [CategoryElements]()
    
    
    func appendEllementsThing(){
        let item: CategoryElements = CategoryElements(titile: "Мясо", count: "30", image: UIImage(named: "Meat")!)
        itemList.append(item)
        
        let item2: CategoryElements = CategoryElements(titile: "Закуски", count: "43", image: UIImage(named: "FastEat")!)
        itemList.append(item2)
        let item3: CategoryElements = CategoryElements(titile: "Салаты", count: "43", image: UIImage(named: "Salads")!)
        itemList.append(item3)
        let item4: CategoryElements = CategoryElements(titile: "Супы", count: "32", image: UIImage(named: "Soup")!)
        itemList.append(item4)
        let item5: CategoryElements = CategoryElements(titile: "Напитки", count: "32", image: UIImage(named: "Drinks")!)
        itemList.append(item5)
        let item6: CategoryElements = CategoryElements(titile: "Сладости", count: "32", image: UIImage(named: "Sweets")!)
        itemList.append(item6)
        
    }
    
    //Сами Рецепты
    
    //Рецепты мяса
    var meatLits = [ThingAllElements]()
    
    func appendReceptts(){
        
        let item: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item1: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item2: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item3: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item4: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item5: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        let item6: ThingAllElements = ThingAllElements(title: "Мясо", image: UIImage(named: "Meat")!)
        meatLits.append(item)
        meatLits.append(item1)
        meatLits.append(item2)
        meatLits.append(item3)
        meatLits.append(item4)
        meatLits.append(item5)
        meatLits.append(item6)


        
    }
    
    
    //Рецепты закусок
    
    var fastEat = [ThingAllElements]()
    
    func fastEatThings(){
        let item: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item1: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item2: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item3: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item4: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item5: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        let item6: ThingAllElements = ThingAllElements(title: "Закуски", image: UIImage(named: "FastEat")!)
        fastEat.append(item)
        fastEat.append(item1)
        fastEat.append(item2)
        fastEat.append(item3)
        fastEat.append(item4)
        fastEat.append(item5)
        fastEat.append(item6)

    }
    
    //Рецепты салатов
    var salads = [ThingAllElements]()
    func saladsThings(){
        let item: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item1: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item2: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item3: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item4: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item5: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        let item6: ThingAllElements = ThingAllElements(title: "Салаты", image: UIImage(named: "Salads")!)
        salads.append(item)
        salads.append(item1)
        salads.append(item2)
        salads.append(item3)
        salads.append(item4)
        salads.append(item5)
        salads.append(item6)
    }
    
    //Рецепты Супов
    
    var soup = [ThingAllElements]()
    
    func soupThings(){
        let item: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item1: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item2: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item3: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item4: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item5: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        let item6: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Soup")!)
        soup.append(item)
        soup.append(item1)
        soup.append(item2)
        soup.append(item3)
        soup.append(item4)
        soup.append(item5)
        soup.append(item6)
    }

    var drinks = [ThingAllElements]()

    func drinksThings(){
        let item: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item1: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item2: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item3: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item4: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item5: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        let item6: ThingAllElements = ThingAllElements(title: "Супы", image: UIImage(named: "Drinks")!)
        drinks.append(item)
        drinks.append(item1)
        drinks.append(item2)
        drinks.append(item3)
        drinks.append(item4)
        drinks.append(item5)
        drinks.append(item6)
    }
    
    var sweets = [ThingAllElements]()
    func sweetsThings(){
        let item: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item1: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item2: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item3: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item4: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item5: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        let item6: ThingAllElements = ThingAllElements(title: "Сладости", image: UIImage(named: "Sweets")!)
        sweets.append(item)
        sweets.append(item1)
        sweets.append(item2)
        sweets.append(item3)
        sweets.append(item4)
        sweets.append(item5)
        sweets.append(item6)
    }
}
