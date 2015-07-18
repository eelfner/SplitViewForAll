//
//  MasterViewController.swift
//  SplitViewForAll
//
//  Created by Eric Elfner on 2015-07-18.
//  Copyright (c) 2015 Eric Elfner. All rights reserved.
//
// Nothing special here for this example, except maybe that a plain UIViewController is used
// so that the View can have a placeholder search that is outside of the UITableView and will
// not scroll off the screen like a header view embedded in a UITableView.

import UIKit

class MasterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let CELL_ID = "Cell"
    let DETAIL_SEGUE_ID = "DetailSegue"
    
    @IBOutlet weak var tableView: UITableView! // Not using UITableViewController, so need own iVar
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == DETAIL_SEGUE_ID
        {
            var dest: DetailViewController = segue.destinationViewController as! DetailViewController
            
            if let path = tableView.indexPathForSelectedRow()
            {
                dest.selectedIndex = path.row // Pass through selection
            }
        }
    }
    
    //MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_ID, forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = "Cell item \(indexPath.row)"
        return cell
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 60
    }
    
}
