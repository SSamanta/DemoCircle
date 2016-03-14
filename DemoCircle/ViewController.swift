//
//  ViewController.swift
//  DemoCircle
//
//  Created by Susim Samanta on 14/03/16.
//  Copyright © 2016 Susim Samanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidLayoutSubviews() {
        print(self.progressView.frame)
         CircleView.drawCircleOn(self.progressView, color: UIColor.brownColor(), progress: 1.5, lineWidth: 2.0, fillColor: UIColor.clearColor())
        
    }
    
}

