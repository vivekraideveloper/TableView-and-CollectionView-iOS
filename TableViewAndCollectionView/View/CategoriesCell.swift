//
//  CategoriesCell.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 19/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var categoriesImage: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    func configureCell(category: Category){
        self.categoriesLabel.text = category.title
        self.categoriesImage.image = UIImage(named: category.image)
    }

    

}
