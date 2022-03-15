//
//  SceneDelegate.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - UIWindowSceneDelegate

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let window = createWindow(scene: scene) else {
            return
        }
        
        self.window = window
    }
    
    // MARK: - Private functions
    
    private func createWindow(scene: UIScene) -> UIWindow? {
        guard let windowScene = scene as? UIWindowScene else {
            return nil
        }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = createRootViewController()
        window.makeKeyAndVisible()
        return window
    }
    
    private func createRootViewController() -> UIViewController {
        let viewController = MainMenuViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
