//
//  ProductCell.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 19/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    func configureCell(product: Product){
        productImage.image = UIImage(named: product.image)
        productNameLabel.text = product.title
        productPriceLabel.text = product.price
    }
    
}
