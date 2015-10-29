//
//  ViewController.swift
//  UITableViewAssignment
//
//  Created by Mounika Ankam on 2/17/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    var artmuseum:ArtMuseum=ArtMuseum()
    
    override func loadView(){
        var view:UIView = UIView()
        view.backgroundColor = UIColor.whiteColor()
        var tableView:UITableView = UITableView()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Identifies a "nib" file, a prehistoric storyboard
        
       
        tableView.registerNib(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "mycell")
        tableView.registerNib(UINib(nibName: "MyCell1", bundle: nil), forCellReuseIdentifier: "mycell1")

        tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(tableView)
        
        view.addConstraint(NSLayoutConstraint(item: tableView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 0.0, constant: 50.0))
        view.addConstraint(NSLayoutConstraint(item: tableView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 550.0))
        view.addConstraint(NSLayoutConstraint(item: tableView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0.0))
        
        self.view = view
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:return artmuseum.worksOfArt.count
        case 1: return artmuseum.worksOfArt.count
        
        default: return -1
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell
        
        if indexPath.section == 0{
            cell = tableView.dequeueReusableCellWithIdentifier("mycell",forIndexPath:indexPath) as UITableViewCell
            
            var leftLabel:UILabel = cell.viewWithTag(10) as UILabel
            var centerLabel:UILabel = cell.viewWithTag(20) as UILabel
            var rightLabel:UILabel = cell.viewWithTag(30) as UILabel
            var image:UIImageView = cell.viewWithTag(40) as UIImageView
            
            
            leftLabel.text = artmuseum.worksOfArt[indexPath.row].title
            centerLabel.text=artmuseum.worksOfArt[indexPath.row].artist
            rightLabel.text = NSString(format: "%d", artmuseum.worksOfArt[indexPath.row].yearcreated)
            image.image = UIImage(named:artmuseum.worksOfArt[indexPath.row].title)
        }
        else {
            
            cell = tableView.dequeueReusableCellWithIdentifier("mycell1",forIndexPath:indexPath) as UITableViewCell
            cell.textLabel?.text = artmuseum.worksOfArt[indexPath.row].artist
            cell.detailTextLabel?.text = artmuseum.worksOfArt[indexPath.row].title
            
        }
       
        return cell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Famous Paintings" : "Artists"
    }


}

