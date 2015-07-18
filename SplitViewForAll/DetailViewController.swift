//
//  DetailViewController.swift
//  SplitViewForAll
//
//  Created by Eric Elfner on 2015-07-18.
//  Copyright (c) 2015 Eric Elfner. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    var selectedIndex = -1
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var selectionText: String
        if selectedIndex >= 0
        {
            selectionText = "Selected item \(selectedIndex)"
        }
        else
        {
            selectionText = "Nothing selected!"
        }
        textLabel.text = selectionText
        
        // Not used
        //if splitViewController?.respondsToSelector("displayModeButtonItem") == true
        //{
        //    navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        //    navigationItem.leftItemsSupplementBackButton = true
        //}
    }
}
