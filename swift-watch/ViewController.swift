//
//  ViewController.swift
//  swift-watch
//
//  Created by Tatsuhiko Akashi on 2014/10/04.
//  Copyright (c) 2014年 akatatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getCurrentTime()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("getCurrentTime"), userInfo: nil, repeats: true)
        
    }
    
    func getCurrentTime(){
        var date = NSDate()
        var outputFormat = NSDateFormatter()
        outputFormat.locale = NSLocale(localeIdentifier:"ja_JP")
        outputFormat.dateFormat = "HH:mm:ss"
        println(outputFormat.stringFromDate(date))
        timeLabel.text = outputFormat.stringFromDate(date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

