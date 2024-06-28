//
//  SceneDelegate.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
		
		let window = UIWindow(windowScene: windowScene)
		let splashVC = SplashScreenViewController.get()
		window.rootViewController = splashVC
		window.makeKeyAndVisible()
		self.window = window
    }
}

