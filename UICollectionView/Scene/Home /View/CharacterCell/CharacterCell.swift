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
        
    }
}

// MARK: - Helper Method's
extension CharacterCell {
	func set(model: Character) {
		imageView.image = UIImage(named: model.imageName)
		lblTitle.text = model.name
	}
}
