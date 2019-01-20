//
//  Category.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 20/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import Foundation
import UIKit

struct Category {
    
    public private(set) var title: String
    public private(set) var image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
}
