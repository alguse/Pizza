//
//  ReInterfaceController.swift
//  Pizza
//
//  Created by Sergio Albarran on 07/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class ReInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func Reinicio() {
        pushControllerWithName("Inicio", context: nil)

    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
