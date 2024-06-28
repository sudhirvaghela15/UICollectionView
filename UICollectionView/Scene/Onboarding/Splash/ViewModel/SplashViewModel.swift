//
//  SplashViewModel.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import Foundation

final class SplashScreenVM {
	var delay: TimeInterval
	var animationDuration: TimeInterval
	
	var scaleX: CGFloat = 5
	var scaleY: CGFloat = 5
	
	init(delay: TimeInterval = 0.30, duration: TimeInterval = 0.3) {
		self.delay = delay
		self.animationDuration = duration
	}

}
