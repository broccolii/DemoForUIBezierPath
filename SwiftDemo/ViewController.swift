//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Broccoli on 15/10/17.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = CustomView()
        customView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        customView.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(customView)
        
//        let string = NSString(string: "测试数据")
//        let attributes = [NSFontAttributeName: UIFont.systemFontSize(),NSForegroundColorAttributeName: UIColor.redColor()]
//        string.drawInRect(CGRect(x: 100, y: 100, width: 100, height: 100), withAttributes: attributes).0
//        string.drawInRect(CGRectMake(200.0, 200.0, 100.0, 100.0), withAttributes: attributes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

