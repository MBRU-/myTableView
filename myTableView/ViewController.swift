//
//  ViewController.swift
//  myTableView
//
//  Created by Martin Brunner on 02.12.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let questions = ["Erste Frage", "Zweite Frage","Dritte Frage","Vierte Frage", "Fünfte Frage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         var cell: QCell = tableView.dequeueReusableCellWithIdentifier("myCell") as QCell
        
        cell.questionTextLabel.text = questions[indexPath.row]
        
        return cell
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        if tableView.cellForRowAtIndexPath(indexPath)?.accessoryType == UITableViewCellAccessoryType.Checkmark {
           tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
          tableView.cellForRowAtIndexPath(indexPath)?.backgroundColor = UIColor.whiteColor()
        }
        else {
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
            tableView.cellForRowAtIndexPath(indexPath)?.backgroundColor = UIColor.greenColor()
 
            }
    }
    
  

    
}

