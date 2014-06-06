//
//  RootViewController.swift
//  testSwiftOne
//
//  Created by Perry on 14-6-5.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbViewContent : UITableView
    var arrTotal : NSMutableArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view!.backgroundColor = UIColor.blackColor()
        arrTotal = self.setUpGroupData()
        self.tbViewContent!.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var tbCell = tableView .dequeueReusableCellWithIdentifier("strCell", forIndexPath: indexPath) as UITableViewCell
        var tempBean: RootBean = arrTotal[indexPath.row] as RootBean
        tbCell.textLabel.text = tempBean.beanDes
        return tbCell
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.arrTotal.count
    }
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        self.performSegueWithIdentifier("cellPush", sender: indexPath)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func setUpGroupData() -> NSMutableArray {
        var arrData: NSMutableArray? = NSMutableArray()
        for i in 0..10 {
            var tempBean: RootBean! = RootBean(id: i+1, des: "good", point: 0.5)
            arrData!.addObject(tempBean)
        }
        return arrData!
    }
    
    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        var indexPathTemp: NSIndexPath = sender as NSIndexPath
        println("index row is \(indexPathTemp.row)")
        var tempBean: RootBean = arrTotal[indexPathTemp.row] as RootBean
        
        var viewControllerDetail: DetailViewController = segue!.destinationViewController as DetailViewController
        viewControllerDetail.strName = tempBean.beanDes
    }
    

}
