//
//  ViewController.swift
//  SwiftExample
//
//  Created by ikenie3 on 6/20/16.
//  Copyright © 2016 org.ikenie3 All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let viewController: FromNibViewController = FromNibViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

