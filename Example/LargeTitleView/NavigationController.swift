//
//  NavigationController.swift
//  LargeTitleView_Example
//
//  Created by poisson on 2020/6/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if #available(iOS 11.0, *) {
            self.navigationBar.prefersLargeTitles = true
        } else {
            // Fallback on earlier versions
            self.navigationItem.title = ""
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
