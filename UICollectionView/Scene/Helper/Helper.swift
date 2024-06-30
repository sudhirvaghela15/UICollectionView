//
//  Helper.swift
//  UICollectionView
//
//  Created by sudhir on 30/06/24.
//

import UIKit

typealias CallBackVoid = () -> Void
typealias CallBack<T> = (T) -> Void

var screenWidth: CGFloat {
	get {
		return UIScreen.main.bounds.width
	}
}

