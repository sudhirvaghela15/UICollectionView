//
//  UIViewController + Extension.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit
extension UIViewController  {
	static var className: String {
		return String(describing: self)
	}
	
	func initMessage(file: StaticString = #file) {
		print("init Class : - \(String.init(describing: self.classForCoder)) \nFile Name :- \(file)")
	}
	
	func deinitMessage(file: StaticString = #file) {
		print("Deinit Class : - \(String.init(describing: self.classForCoder)) \nFile Name :- \(file)")
	}
}

extension UIViewController {
	/// hide nav bar
	func setNavigationBar (hidden isHidden: Bool) {
		self.navigationController?.setNavigationBarHidden(isHidden, animated: false)
	}
}
