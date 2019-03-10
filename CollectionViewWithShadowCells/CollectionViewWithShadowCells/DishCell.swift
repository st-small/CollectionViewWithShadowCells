//
//  DishCell.swift
//  CollectionViewWithShadowCells
//
//  Created by Stanly Shiyanovskiy on 3/9/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit
import TTTAttributedLabel

public class DishCell: UICollectionViewCell {
    
    static let reuseId = "DishCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameLabel: TTTAttributedLabel = {
        let label = TTTAttributedLabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.verticalAlignment = TTTAttributedLabelVerticalAlignment.top
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        addSubview(mainImageView)
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28.0).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20.0).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12.0).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 25.0).isActive = true
        
        addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 24.0).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70.0).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12.0).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12.0).isActive = true
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 5.0
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 0, height: 2.0)
        
        clipsToBounds = false
    }
}

