//
//  ViewController.swift
//  LargeTitleView
//
//  Created by shizhou@live.com on 06/17/2020.
//  Copyright (c) 2020 shizhou@live.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        if #available(iOS 11.0, *) {
            self.navigationItem.largeTitleDisplayMode = .automatic
        } else {
            // Fallback on earlier versions
            let customLargeView = LargeTitleView
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

