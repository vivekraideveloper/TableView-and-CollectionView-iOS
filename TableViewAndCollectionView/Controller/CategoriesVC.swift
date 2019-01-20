//
//  CategoriesVC.swift
//  TableViewAndCollectionView
//
//  Created by Vivek Rai on 19/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        categoryTableView.rowHeight = 200
        categoryTableView.backgroundColor = #colorLiteral(red: 0.7962999683, green: 0.2352566541, blue: 0.2016312454, alpha: 1)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CategoriesCell else {
            return UITableViewCell()
        }
        cell.configureCell(category: DataService.instance.getCategories()[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ProductVC", sender: DataService.instance.getCategories()[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ProductVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            destinationVC.initProducts(category: sender as! Category)
        }
    }


}

