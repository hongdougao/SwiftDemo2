//
//  ViewController.swift
//  SwiftDemo2
//
//  Created by Yangyue on 15/4/9.
//  Copyright (c) 2015年 mac. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController,UIAlertViewDelegate,UITableViewDataSource, UITableViewDelegate{

    var tb : UITableView?
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
                tb = UITableView(frame:CGRectMake(0,  0, UIScreen .mainScreen().bounds.width    , UIScreen.mainScreen().bounds.height))
        tb!.registerClass(NewFirstSwiftTableViewCell.self, forCellReuseIdentifier:"newSwiftCell")
        tb!.delegate = self
        tb!.dataSource = self
        self.view.addSubview( tb! )
        
 
    }
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("newSwiftCell", forIndexPath: indexPath) as! NewFirstSwiftTableViewCell
        var img = UIImage(named: "sns_icon_1.png")
 
        cell.pretendImageView.image =  UIImage(named: String(format: "sns_icon_%i@2x" ,indexPath.row+1))

        cell.pretendLbl.text = String(format: "sns_icon_%i@2x" ,indexPath.row+1)
        return cell
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 97
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var alert = UIAlertView()
        alert.title = "hello world"
        alert.message = String(format: "sns_icon_%i@2x" ,indexPath.row+1)
        alert.addButtonWithTitle("ok")
        alert.show()
    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

