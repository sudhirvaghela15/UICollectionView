//
//  UIStoryboard  + Extension.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

enum Storyboard: String {
	case Home
	case Onboarding
}

extension UIStoryboard {
	
	/// get storyboard from custom storyboard type
	/// - Parameter storyboard: storyboard enum for defince storyboard name's
	/// - Returns: return UIStroryboard Object
	class func get(_ storyboard: Storyboard) -> UIStoryboard {
		return UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
	}
	
	/// view controller instantiate
	/// - Returns: UIViewController
	func instantiate<T: UIViewController>() -> T? {
		return self.instantiateViewController(withIdentifier: String(describing: T.self)) as? T
	}
	
	func instantiate<T: UIViewController>(_ type: T.Type, creator: ((NSCoder) -> T?)? = nil) -> T {
		return self.instantiateViewController(identifier: String(describing: T.self), creator: creator)
	}
}
