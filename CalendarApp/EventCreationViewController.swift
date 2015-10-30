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
    @IBOutlet weak var TimeDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectDate(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(EventTime.date)
        self.TimeDisplay.text = strDate
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        let newEvent = Event()
        newEvent.info = EventInfo.text
        newEvent.date = EventTime.date
        TempAgenda.Events.append(newEvent)
        
    }
    
    
}