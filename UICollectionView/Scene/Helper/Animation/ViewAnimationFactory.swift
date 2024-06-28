//
//  ViewAnimationFactory.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

enum ViewAnimationFactory {
	
	static func makeSimpleAnimation(duration: TimeInterval, delay: TimeInterval = 0, action: @escaping() -> Void, completion: ((Bool) -> Void)? = nil){
		UIView.animate(withDuration: duration, delay: delay, animations: action, completion: completion)
	}
	
	static func makeEaseInAnimation(duration: TimeInterval, delay: TimeInterval = 0, action: @escaping() -> Void, completion: ((Bool) -> Void)? = nil) {
		UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: action, completion: completion)
	}
	
	static func makeEaseOutAnimation(duration: TimeInterval, delay: TimeInterval = 0, action: @escaping() -> Void, completion: ((Bool) -> Void)? = nil) {
		UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: action, completion: completion)
	}
	
	static func makeEaseInOutAnimation(duration: TimeInterval, delay: TimeInterval = 0, action: @escaping() -> Void, completion:((Bool) -> Void)? = nil) {
		UIView.animate(withDuration: duration, delay: delay,options: .curveEaseInOut, animations: action, completion: completion)
	}
}
