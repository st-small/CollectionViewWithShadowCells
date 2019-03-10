//
//  MenuCollectionView.swift
//  CollectionViewWithShadowCells
//
//  Created by Stanly Shiyanovskiy on 3/9/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit
import SDWebImage

public class MenuCollectionView: UICollectionView {
    
    private var cells = [DishModel]()

    public init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        delegate = self
        dataSource = self
        register(DishCell.self, forCellWithReuseIdentifier: DishCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.menuMinimumLineSpacing
        contentInset = UIEdgeInsets(top: Constants.topDistance, left: 0, bottom: Constants.bottomDistance, right: 0)
        
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func set(cells: [DishModel]) {
        self.cells = cells
    }
}

extension MenuCollectionView: UICollectionViewDelegate {
    
}

extension MenuCollectionView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = cells[indexPath.row]
        let cell = dequeueReusableCell(withReuseIdentifier: DishCell.reuseId, for: indexPath) as! DishCell
        let url = URL(string: item.mainImage)
        cell.mainImageView.sd_setShowActivityIndicatorView(true)
        cell.mainImageView.sd_setIndicatorStyle(.gray)
        cell.mainImageView.sd_setImage(with: url, placeholderImage: nil)
        cell.nameLabel.text = item.dishName
        cell.priceLabel.text = "\(item.price/100) руб."
        return cell
    }
}

extension MenuCollectionView: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.itemWidth, height: Constants.itemHeight)
    }
}

fileprivate struct Constants {
    static let topDistance: CGFloat = 15.0
    static let bottomDistance: CGFloat = 15.0
    static let menuMinimumLineSpacing: CGFloat = 10.0
    static let itemWidth: CGFloat = (UIScreen.main.bounds.width - 32.0)
    static let itemHeight: CGFloat = 100.0
}
