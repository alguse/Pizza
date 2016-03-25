//
//  Cocina.swift
//  Pizza
//
//  Created by Sergio Albarran on 05/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import UIKit

class Cocina: UIViewController {

    @IBOutlet weak var timer: UILabel!
    
    @IBOutlet weak var countd: UILabel!
    override func viewWillAppear(animated: Bool) {
        
    }
    
    var timerCounter:NSTimeInterval!
    
    func stringFromTimeInterval(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let seconds = interval % 60
        let minutes = (interval / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func startTimer(hour:Double) {
        timerCounter = NSTimeInterval(hour * 60 * 60)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTimer:", userInfo: nil, repeats: true)
    }
    
    func onTimer(timer:NSTimer!) {
        // Here is the string containing the timer
        // Update your label here
        countd.text=(stringFromTimeInterval(timerCounter))
        timerCounter!--
}

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        startTimer(0.50)
        
        let todaysDate:NSDate = NSDate()
        let dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let DateInFormat:String = dateFormatter.stringFromDate(todaysDate)
        timer.text = DateInFormat
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
