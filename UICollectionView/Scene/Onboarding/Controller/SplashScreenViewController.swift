//
//  SplashScreenViewController.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

final class SplashScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
}

// MARK: - Factory Method
extension SplashScreenViewController {
    static func get() -> SplashScreenViewController {
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        let view: SplashScreenViewController = storyboard.instantiateInitialViewController() as! SplashScreenViewController
        return view
    }
}

