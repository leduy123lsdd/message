//
//  ViewController.swift
//  messageApp_
//
//  Created by Lê Duy on 8/9/19.
//  Copyright © 2019 Lê Duy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let cellId = "tableCellId"
    let headerId = "tableHeader"
    let collectionId = "tableCollection"
    let searchIdCell = "tableSearch"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
        tableView.register(UINib(nibName: "TableCollectionViewCell", bundle: nil), forCellReuseIdentifier: collectionId)
        
        tableView.register(UINib(nibName: "TableSearchViewCell", bundle: nil), forCellReuseIdentifier: searchIdCell)
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: searchIdCell, for: indexPath) as! TableSearchViewCell
            
            return cell
        }
        
        if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: collectionId, for: indexPath) as! TableCollectionViewCell
            
            return cell
            
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 60
        }
        
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = Bundle.main.loadNibNamed("TableViewHeaderCell", owner: self, options: nil)?.first as! TableViewHeaderCell
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 100.0
    }
}

