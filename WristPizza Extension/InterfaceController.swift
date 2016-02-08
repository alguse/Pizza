//
//  InterfaceController.swift
//  WristPizza Extension
//
//  Created by Sergio Albarran on 06/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pick: WKInterfacePicker!
    var tamaño : String = "Chica"

    
    var itemList: [(String, String)] = [
        ("Size 1", "Chica"),
        ("Size 2", "Mediana"),
        ("Size 3", "Grande")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        pick.setItems(pickerItems)
        pick.setSelectedItemIndex(0)
    }

    @IBAction func pasoSig() {
        let context: AnyObject? = Pedido(t: tamaño, m: "", q: "", i: [])
        pushControllerWithName("Masa", context: context)
    }
    
    @IBAction func pickerChanged(value: Int) {
        tamaño = itemList[value].1
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
