
import Foundation
import UIKit


//Переход между экранами без сегвея и сториборда(не робит в обратку)
class PrepareNextScreenIdStorybard{
    
    func showScreen(storyBoardId id: String){
        let mainAppViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: id)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let sceneDelegate = windowScene.delegate as? SceneDelegate, let window = sceneDelegate.window{
            
            window.rootViewController = mainAppViewController
            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
}
