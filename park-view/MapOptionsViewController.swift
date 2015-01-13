//
//  MapOptionsViewController.swift
//  park-view
//
//  Created by Jared Smith on 1/10/15.
//  Copyright (c) 2015 tutorial. All rights reserved.
//

import UIKit

class MapOptionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var selectedOptions:NSMutableArray = []
    
    enum PVMapOption:Int {
        case PVMapBoundary = 1
        case PVMapOverlay, PVMapPins, PVMapCharacterLocation, PVMapRoute
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableHeaderFooterViewWithIdentifier("OptionCell") as UITableViewCell
        var selectedRow = PVMapOption(rawValue: indexPath.row)
        switch selectedRow! {
            case PVMapOption.PVMapBoundary:
                cell.textLabel?.text = "Park Boundary"
            case PVMapOption.PVMapOverlay:
                cell.textLabel?.text = "Map Overlay"
            case PVMapOption.PVMapPins:
                cell.textLabel?.text = "Attraction Pins"
            case PVMapOption.PVMapCharacterLocation:
                cell.textLabel?.text = "Character Location"
            case PVMapOption.PVMapRoute:
                cell.textLabel?.text = "Route"
            default:
                break;
        }
        
        if self.selectedOptions.containsObject(indexPath.row) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell: UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        if cell.accessoryType == UITableViewCellAccessoryType.Checkmark {
            cell.accessoryType = UITableViewCellAccessoryType.None
            self.selectedOptions.removeObject(indexPath.row)
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            self.selectedOptions.addObject(indexPath.row)
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}
