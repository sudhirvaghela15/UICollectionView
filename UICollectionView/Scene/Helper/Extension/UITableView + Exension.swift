//
//  UITableView + Exension.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

extension UICollectionView {
	func dequeueReusableCell<T: UICollectionViewCell>(with identifier: String =  String(describing: T.self), for indePath: IndexPath) -> T {
		return dequeueReusableCell(
			withReuseIdentifier: identifier,
			for: indePath
		) as! T
	}
	
	func register(cell: AnyClass) {
		register(cell.self, forCellWithReuseIdentifier: String(describing: cell.self))
	}
	
	func registerNib(_ nibName: AnyClass) {
		register(UINib(nibName: String(describing: nibName), bundle: nil), forCellWithReuseIdentifier: String(describing: nibName))
	}
	
	func registerHeader(cell: AnyClass) {
		register(UINib(nibName: String(describing: cell), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: cell))
	}
	func registerFooter(cell: AnyClass) {
		register(UINib(nibName: String(describing: cell), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: String(describing: cell))
	}
}
