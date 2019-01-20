//
//  Product.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 20/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import Foundation
import UIKit

struct Product {
    
    public private(set) var title: String
    public private(set) var image: String
    public private(set) var price: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.image = imageName
        self.price = price
    }
}
