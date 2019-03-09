//
//  MenuCollectionView.swift
//  CollectionViewWithShadowCells
//
//  Created by Stanly Shiyanovskiy on 3/9/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class MenuCollectionView: UICollectionView {
    
    private var cells = [DishModel]()

    public init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        delegate = self
        dataSource = self
        register(DishCell.self, forCellWithReuseIdentifier: DishCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
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
        let cell = dequeueReusableCell(withReuseIdentifier: DishCell.reuseId, for: indexPath) as! DishCell
        let url = URL(string: cells[indexPath.row].mainImage)
        cell.mainImageView.load(url: url!)
        return cell
    }
}

extension MenuCollectionView: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        return CGSize(width: screenWidth - 32.0, height: 100.0)
    }
}
