//
//  CommonTableView.swift
//  SectionTableView
//
//  Created by Patel Yogesh on 15/04/19.
//  Copyright © 2019 yogesh. All rights reserved.
//

import UIKit

class CommonTableView: UITableView {
    
    let strCellIdentifier:String = "cellIdentifierSection"
    
     func setCommonTableViewDelegate() {
        self.register(UITableViewCell.self, forCellReuseIdentifier: strCellIdentifier)
        self.dataSource = self;
        self.delegate = self;
    }
}


extension CommonTableView:UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        /**
         * number of section require in table view
         */
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 2
        }
        else if(section == 1) {
            return 3
        }
        else {
            return 4
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: strCellIdentifier, for: indexPath)
        let section = indexPath.section
        let row = indexPath.row
        
        cell.textLabel?.text = String("Section \(section) and row \(row)")
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String("Section \(section)")
    }
    
    
}
