//
//  SplitViewController.swift
//  SplitViewForAll
//
//  Created by Eric Elfner on 2015-07-18.
//  Copyright (c) 2015 Eric Elfner. All rights reserved.
//
//
// This controller fixes 2 issues. First, the initial display is set to AllVisible. And second,
// When the controller is splitable (all displays except iPhone portrait), show both (AllVisible).

import UIKit

class SplitViewController: UISplitViewController, UISplitViewControllerDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.delegate = self
        self.preferredDisplayMode = .AllVisible // For first display
    }
    
    // MARK: - UISplitViewControllerDelegate
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool
    {
        return true // tell split view controller to NOT COLLAPSE the secondary view controller over the primary
    }
    func targetDisplayModeForActionInSplitViewController(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
    {
        return .AllVisible // Show both
    }

}
