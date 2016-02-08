//
//  Masa.swift
//  Pizza
//
//  Created by Sergio Albarran on 06/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class Masa: WKInterfaceController {

    var tamaño : String = ""
    var masa : String = "Delgada"
    
    @IBOutlet var pick: WKInterfacePicker!
    
    var itemList: [(String, String)] = [
        ("Size 1", "Delgada "),
        ("Size 2", "Crujiente"),
        ("Size 3", "Gruesa")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pedido
        tamaño = c.tamaño
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        pick.setItems(pickerItems)
    }
    
    @IBAction func pickerChanged(value: Int) {
        masa = itemList[value].1
    }
    
    @IBAction func pasoSig() {
        let context: AnyObject? = Pedido(t: tamaño, m: masa, q: "", i: [])

        pushControllerWithName("Queso", context: context)
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
