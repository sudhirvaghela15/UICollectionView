//
//  CharacterCell.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

class CharacterCell: UICollectionViewCell {
	
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var lblTitle: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		lblTitle.numberOfLines = 0
		let color = [
			UIColor.cyan,
			UIColor.green,
			UIColor.yellow,
			UIColor.darkGray,
			UIColor.purple,
			UIColor.magenta
		].randomElement()
		
		backgroundColor = color
	}
	
	override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
		
		let padding: CGFloat = 8
		let noOfItems = traitCollection.horizontalSizeClass == .compact ? 2 : 4
		let itemWidth = floor(
			( screenWidth - (padding * 2)) / CGFloat(noOfItems)
		)
		
		
		return super.systemLayoutSizeFitting(
			CGSize(
				width: itemWidth,
				height: UIView.layoutFittingExpandedSize.height
			),
			withHorizontalFittingPriority: .required,
			verticalFittingPriority: .fittingSizeLevel
		)
	}
}

// MARK: - Helper Method's
extension CharacterCell {
	func set(model: Character) {
		imageView.image = UIImage(named: model.imageName)
		lblTitle.text = model.name
	}
}
