//
//  ViewController.swift
//  PingLoaderWithQuartz
//
//  Created by Jeff Eom on 2016-08-10.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let loadingView = CustomView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        addLoadingView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addLoadingView() {
        let boxSize: CGFloat = 320
        loadingView.frame = CGRect(x: view.bounds.width / 2 - boxSize / 2,
                                   y: view.bounds.height / 2 - boxSize / 2,
                                   width: boxSize,
                                   height: boxSize)
        view.addSubview(loadingView)
        loadingView.addLoadingAnimationGroupAnimation()
    }
    
    
    
}

