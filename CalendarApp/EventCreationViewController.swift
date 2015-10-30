//
//  EventCreationViewController.swift
//  CalendarApp
//
//  Created by Mark Chae on 10/23/15.
//  Copyright (c) 2015 Mark Chae. All rights reserved.
//

import UIKit

class EventCreationViewController: UIViewController {

    @IBOutlet weak var EventInfo: UITextField!
    @IBOutlet weak var EventTime: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func selectDate(sender: AnyObject) {
        /*var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(EventTime.date)*/
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        let newEvent = Event()
        newEvent.info = EventInfo.text!
        newEvent.date = EventTime.date
        print(self.selectDate(EventTime))
        TempAgenda.Events.append(newEvent)
        
    }
    
    
}