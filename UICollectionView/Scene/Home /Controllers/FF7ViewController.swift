//
//  HomeViewController.swift
//  UICollectionView
//
//  Created by sudhir on 29/06/24.
//

import UIKit

class FF7ViewController: UIViewController {
	
	@IBOutlet private weak var collectionView: UICollectionView!
	
	private var characters = Universe.ff7r.stubs {
		didSet {
			updateCollectionView(oldItems: oldValue, newItems: characters)
		}
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		setupCollectionView()
		setupLayout()
    }
}

// MARK: - Helper Methods
extension FF7ViewController {
	private func updateCollectionView(oldItems: [Character], newItems: [Character]) {
		
	}
	
	private func setupCollectionView() {
		collectionView.registerNib(CharacterCell.self)
		collectionView.delegate = self
		collectionView.dataSource = self
	}
	
	private func setupLayout() {
		guard let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
			return
		}
		let padding: CGFloat = 8
		flowLayout.sectionInset = .init(top: 0, left: padding, bottom: 0, right: padding)
		flowLayout.minimumLineSpacing = 0
		flowLayout.minimumInteritemSpacing = 0
		flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
	}
}

	// MARK: - Collection view data sources method's
extension FF7ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return characters.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let model = characters[indexPath.row]
		let cell: CharacterCell = collectionView.dequeueReusableCell(
			for: indexPath
		)
		cell.set(model: model)
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		debugPrint("Did Select at \(indexPath)")
	}
}

// MARK: - Factory Method
extension FF7ViewController {
	public static func get() -> FF7ViewController {
		let view: FF7ViewController = UIStoryboard.get(.Home).instantiate(
			FF7ViewController.self
		)
		return view
	}
}
