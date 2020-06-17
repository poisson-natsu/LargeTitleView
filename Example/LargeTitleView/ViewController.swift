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
            let customlargeView = LargeTitleView.init(title: "荒淫荒淫，热烈荒淫")
            customlargeView.registerFatherView(backScrollView)
            backScrollView.addSubview(customlargeView)
        }
        view.addSubview(backScrollView)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "注册新用户", style: .plain, target: self, action: #selector(toRegiste))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.isHidden = false
        }else {
            navigationController?.navigationBar.isHidden = true
        }
    }
        
    @objc func toRegiste() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var backScrollView: UIScrollView = {
        var scrollView = UIScrollView.init(frame: UIScreen.main.bounds)
        scrollView.backgroundColor = UIColor.clear
        scrollView.contentSize = CGSize.init(width: 0, height: UIScreen.main.bounds.size.height)
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
}

