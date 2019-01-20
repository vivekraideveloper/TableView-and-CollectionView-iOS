//
//  ProductVC.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 19/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productCollectionView: UICollectionView!
    private var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ProductCell else {
            return UICollectionViewCell()
        }
        
        cell.configureCell(product: products[indexPath.row])
        return cell
    }
    
}
