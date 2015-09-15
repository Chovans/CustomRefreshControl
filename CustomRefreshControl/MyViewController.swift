//
//  MyViewController.swift
//  CustomRefreshControl
//
//  Created by chovans on 15/9/14.
//  Copyright © 2015年 chovans. All rights reserved.
//

import UIKit

class MyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let refreshControl = UIRefreshControl()
    
    var refreshView = RefreshControlView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        refreshControl.tintColor = UIColor.clearColor()
        refreshControl.addTarget(self, action: "refresh:", forControlEvents: UIControlEvents.ValueChanged)
        
        tableView.addSubview(refreshControl)
        
        refreshView = RefreshControlView(frame: refreshControl.frame)

        refreshControl.addSubview(refreshView)

    }
    
    func refresh (sender:AnyObject){
        startAnimation()
        performSelector("stopAnimation", withObject: nil, afterDelay: 10)
    }
    
    func startAnimation(){
        refreshView.startAnimation()
    }
    
    func stopAnimation(){
        refreshView.layer.removeAllAnimations()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
