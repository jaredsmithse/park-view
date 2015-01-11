//
//  ParkMapViewController.swift
//  park-view
//
//  Created by Jared Smith on 1/7/15.
//  Copyright (c) 2015 tutorial. All rights reserved.
//

import UIKit

class ParkMapViewController: UIViewController {
    
    var selectedOptions:[Int] = []
    
    @IBAction func mapTypeChanged(sender: AnyObject) {
        //to be implemented
    }
    
    @IBAction func closeOptions(exitSegue: UIStoryboardSegue) {
        var optionsViewController:MapOptionsViewController = exitSegue.sourceViewController as MapOptionsViewController
        self.selectedOptions = optionsViewController.selectedOptions
        self.loadSelectedOptions()
    }
    
    func loadSelectedOptions() {
        //to be implemented
    }
    
    required init(coder aDecoder: NSCoder) {
        self.selectedOptions = []
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var optionsViewController:MapOptionsViewController = segue.destinationViewController as MapOptionsViewController
        optionsViewController.selectedOptions = self.selectedOptions
        
    }
}

