//
//  ViewController.swift
//  TextViewSample
//
//  Created by Niklas Fahl on 3/30/15.
//  Copyright (c) 2015 Niklas Fahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainSampleView: UIView!
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Test"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        mainSampleView.frame = CGRectMake(0.0, 0.0, UIScreen.mainScreen().bounds.width, self.view.frame.height)
        mainScrollView.contentSize = CGSizeMake(mainSampleView.frame.width, mainSampleView.frame.height)
        mainScrollView.addSubview(mainSampleView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
