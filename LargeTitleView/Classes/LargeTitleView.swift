//
//  LargeTitleView.swift
//  DriverYunShun
//
//  Created by poisson on 2020/6/16.
//  Copyright © 2020 yunshun. All rights reserved.
//

import UIKit

open class LargeTitleView: UIView {

    var title: String?
    private var customLargeTitleLabel: UILabel?
    private var fatherView: UIScrollView?
    private var initialOffsetY: CGFloat?
    let largeTitleHeight: CGFloat = 80
    let initialFontSize: CGFloat = 32
    private let largeTitleY: CGFloat = 40
    
    public init(title: String) {
        self.title = title
        super.init(frame: CGRect.init(x: 20, y: largeTitleY, width: UIScreen.main.bounds.size.width, height: largeTitleHeight))
        configLabel()
    }
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.init(x: 20, y: largeTitleY, width: UIScreen.main.bounds.size.width, height: largeTitleHeight))
        configLabel()
    }
    
    public func registerFatherView(_ scrollView: UIScrollView?) {
        fatherView = scrollView
//        initialOffsetY = fatherView?.contentOffset.y
//        print("initial:\(fatherView?.contentOffset.y)")
        initialOffsetY = -44 // TODO
        fatherView?.addObserver(self, forKeyPath: "contentOffset", options: .new, context: nil)
    }
    
    internal override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let initY = initialOffsetY, let newPoint = change?[.newKey] as? CGPoint{
            let offsetY = initY - newPoint.y
//            print("initY:\(initY) --- newPoint.y:\(newPoint.y) -- offsetY:\(offsetY)")
            if offsetY >= 0 {
                var index = offsetY*0.05
                if index > 3 {
                    index = 3
                }
                customLargeTitleLabel?.font = UIFont.boldSystemFont(ofSize: initialFontSize+index)
            }else {
                var responder = self as UIResponder
                var vc: UIViewController?
                while let resp = responder.next {
                    if resp.isKind(of: UIViewController.self) {
                        vc = resp as? UIViewController
                        break
                    }
                    responder = resp
                }
                
                if offsetY < initY {
                    if let superVc = vc {
                        superVc.title = customLargeTitleLabel?.text
                        UIView.animate(withDuration: 0.5) {
                            superVc.navigationController?.navigationBar.isHidden = false
                        }
                    }
                }else {
                    if let superVc = vc {
                        UIView.animate(withDuration: 0.5) {
                            superVc.navigationController?.navigationBar.isHidden = true
                        }
                    }
                }
            }
        }
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: largeTitleLabel
    private func configLabel() {
        customLargeTitleLabel = UILabel.init(frame: bounds)
        customLargeTitleLabel?.backgroundColor = UIColor.white
        customLargeTitleLabel?.font = UIFont.boldSystemFont(ofSize: initialFontSize)
        customLargeTitleLabel?.text = title
        addSubview(customLargeTitleLabel!)
    }
}
