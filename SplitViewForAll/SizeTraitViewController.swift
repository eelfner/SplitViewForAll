//
//  SizeTraitViewController.swift
//  SplitViewForAll
//
//  Created by Eric Elfner on 2015-07-18.
//  Copyright (c) 2015 Eric Elfner. All rights reserved.
//

// This ViewController controls a View with just a container. This creates an override
// point for setting the SizeTrait of the contained ViewController. We force any view
// with width > 420 to be a Size Class of Regular. This allows the SplitViewController
// to Split views (Master+Detail) displayed for all iPhones in Landscape.
//
// I would not be surprise if this becomes un-needed in the future.

import UIKit

class SizeTraitViewController: UIViewController
{
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
    {
        if size.width > 420 // This makes a nice cut-off point with iPhone6+ at 414 x 736 points
        {
            self.setOverrideTraitCollection(UITraitCollection(horizontalSizeClass:.Regular), forChildViewController:self.childViewControllers[0] as! UIViewController)
        }
        else
        {
            self.setOverrideTraitCollection(UITraitCollection(horizontalSizeClass:.Compact), forChildViewController:self.childViewControllers[0] as! UIViewController)
        }
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator);
    }
}
