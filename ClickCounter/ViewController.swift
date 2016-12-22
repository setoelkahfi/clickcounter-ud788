//
//  ViewController.swift
//  ClickCounter
//
//  Created by SDMobile on 12/21/16.
//  Copyright © 2016 Seto Elkahfi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 100, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
     
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRect.init(x: 50, y: 250, width: 100, height: 60)
        buttonDecrement.setTitleColor(UIColor.red, for: .normal)
        buttonDecrement.setTitle("Decrement", for: .normal)
        self.view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    func incrementCount() {
        self.count = self.count + 1;
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count = self.count - 1;
        self.label.text = "\(self.count)"
    }
}
