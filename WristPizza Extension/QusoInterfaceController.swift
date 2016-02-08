//
//  QusoInterfaceController.swift
//  Pizza
//
//  Created by Sergio Albarran on 07/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class QusoInterfaceController: WKInterfaceController {
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = "Mozzarela"
    
    @IBOutlet var pick: WKInterfacePicker!
    
    var itemList: [(String, String)] = [
        ("Size 1", "Mozzarela "),
        ("Size 2", "Cheddar"),
        ("Size 3", "Parmesano"),
        ("Size 4", "Sin queso")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pedido
        tamaño = c.tamaño
        masa = c.masa
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        pick.setItems(pickerItems)
    }
    
    @IBAction func pickerChanged(value: Int) {
        queso = itemList[value].1
    }
    
    @IBAction func pasoSig() {
        let context: AnyObject? = Pedido(t: tamaño, m: masa, q: queso, i: [])
        pushControllerWithName("Ingredientes", context: context)
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
