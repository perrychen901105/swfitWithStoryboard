//
//  tempFile.swift
//  testSwiftOne
//
//  Created by Perry on 14-6-5.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import Foundation
/*
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var view = UITableView(frame: CGRectMake(0, 20, 320, 548), style: UITableViewStyle.Plain)
        view.delegate = self
        view.dataSource = self
        
        self.view.addSubview(view)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("OMGCell") as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "OMGCell")
        }
        
        cell!.textLabel.text = "Row \(indexPath.row)"
        
        return cell
    }
    
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return "Section \(section)"
    }
}
*/