//
//  ViewController.swift
//  CollectionViewWithShadowCells
//
//  Created by Stanly Shiyanovskiy on 3/9/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    private var menuCollectionView = MenuCollectionView()

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(menuCollectionView)
        
        menuCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        menuCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        menuCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        menuCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        menuCollectionView.set(cells: DishModel.fetchDishes())
    }
}

