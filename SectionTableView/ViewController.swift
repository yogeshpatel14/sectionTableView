//
//  ViewController.swift
//  SectionTableView
//
//  Created by Patel Yogesh on 15/04/19.
//  Copyright © 2019 yogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tblCommon:CommonTableView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /**
         * set datasource and delegate common table view
         */
        self.setCommonTableProperty();
    }
    
    func setCommonTableProperty() {
        self.tblCommon.setCommonTableViewDelegate()
    }


}

