//
//  SplashScreenViewController.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

final class SplashScreenViewController: UIViewController {
	
	@IBOutlet weak var imgView: UIImageView!
	
	private var delegateCallback: CallBackVoid
	
	var viewModel: SplashScreenVM!
	
	init?(coder: NSCoder, completion: @escaping CallBackVoid) {
		self.delegateCallback = completion
		super.init(coder: coder)
		self.initMessage()
	}
	
	required init?(coder: NSCoder) {
		fatalError("You must create this view controller.")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		DispatchQueue.main.asyncAfter(wallDeadline: .now() + viewModel.delay) {
			self.transformImageView()
		}
    }
	
	deinit { deinitMessage() }
}

// MARK: - Helper method's
extension SplashScreenViewController {
	private func transformImageView() {
		ViewAnimationFactory.makeSimpleAnimation(duration: viewModel.animationDuration) {
			self.imgView.transform = self.makeCGAffineTransform()
		} completion: { _ in
			self.delegateCallback()
			self.imgView.transform = .identity
		}
	}
	
	private func makeCGAffineTransform() -> CGAffineTransform {
		return CGAffineTransform(scaleX: viewModel.scaleX, y: viewModel.scaleY)
	}

}

// MARK: - Factory Method
extension SplashScreenViewController {
	static public func get(completion: @escaping CallBackVoid) -> SplashScreenViewController {
		let viewController = UIStoryboard.get(.Onboarding).instantiate(SplashScreenViewController.self) { coder in SplashScreenViewController(
			coder: coder,
			completion: completion
		)! }
		viewController.viewModel = SplashScreenVM(delay: 1)
		return viewController
    }
}

