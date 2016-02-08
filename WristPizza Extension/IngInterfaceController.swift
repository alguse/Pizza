//
//  IngInterfaceController.swift
//  Pizza
//
//  Created by Sergio Albarran on 07/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class IngInterfaceController: WKInterfaceController {

    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    @IBOutlet var ing1: WKInterfaceSwitch!
    @IBOutlet var ing2: WKInterfaceSwitch!
    @IBOutlet var ing3: WKInterfaceSwitch!
    @IBOutlet var ing4: WKInterfaceSwitch!
    @IBOutlet var ing5: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pedido
        tamaño = c.tamaño
        masa = c.masa
        queso = c.queso
    }

    @IBAction func switchAction(value: Bool) {
            if !ingredientes.contains("Jamón"){
                ingredientes.append("Jamón")
            }else{
                ingredientes = ingredientes.filter() {$0 != "Jamón"}
            }
    }
    
    
    @IBAction func switchAction2(value: Bool) {
        if !ingredientes.contains("Pepperoni"){
            ingredientes.append("Pepperoni")
        }else{
            ingredientes = ingredientes.filter() {$0 != "Pepperoni"}
        }
    }
    
    
    @IBAction func switchAction3(value: Bool) {
        if !ingredientes.contains("Pavo"){
            ingredientes.append("Pavo")
        }else{
            ingredientes = ingredientes.filter() {$0 != "Pavo"}
        }
    }
    
    
    @IBAction func switchAction4(value: Bool) {
        if !ingredientes.contains("Aceitunas"){
            ingredientes.append("Aceitunas")
        }else{
            ingredientes = ingredientes.filter() {$0 != "Aceitunas"}
        }
    }
    
    
    @IBAction func switchAction5(value: Bool) {
        if !ingredientes.contains("Pimientos"){
            ingredientes.append("Pimientos")
        }else{
            ingredientes = ingredientes.filter() {$0 != "Pimientos"}
        }
    }
    
    @IBAction func confimar() {
        if ingredientes.count <= 0{
            let cancel = WKAlertAction(title: "Regresar", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
                
            })
        self.presentAlertControllerWithTitle("Ingredientes", message: "Selecciona al menos un ingrediente", preferredStyle: WKAlertControllerStyle.Alert, actions: [cancel])
        }else{
            let context: AnyObject? = Pedido(t: tamaño, m: masa, q: queso, i: ingredientes)
            pushControllerWithName("Confirma", context: context)
        }
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
