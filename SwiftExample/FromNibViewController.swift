//
//  MyViewController.swift
//  CompileTest
//
//  Created by ikenie3 on 6/20/16.
//  Copyright © 2016 org.ikenie3 All rights reserved.
//

import UIKit

class FromNibViewController: UIViewController {
    
    // MARK: -- Statics
    static var kTopLayoutConstraint: String { return "TopLayoutConstraint" }
    static var kBottomLayoutConstraint: String { return "BottomLayoutConstraint" }
    
    // MARK: -- Properties
    var topLayoutConstraint: NSLayoutConstraint!
    var bottomLayoutConstraint: NSLayoutConstraint!
    
    
    // MARK: -- Actions
    
    // MARK: -- Outlets
    
    // MARK: -- View lifecycles
    func scanLayoutConstraint() {
        for constraint: NSLayoutConstraint in self.view.constraints {
            if (constraint.identifier == FromNibViewController.kTopLayoutConstraint) {
                self.topLayoutConstraint = constraint
            }
            else if constraint.identifier == FromNibViewController.kBottomLayoutConstraint {
                self.bottomLayoutConstraint = constraint
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scanLayoutConstraint()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        // do something
        self.topLayoutConstraint.constant = self.topLayoutGuide.length
        self.bottomLayoutConstraint.constant = self.bottomLayoutGuide.length
        
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // do something
    }
    
    override func updateViewConstraints() {
        // do something
        
        super.updateViewConstraints()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    // MARK: -- Memory warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


