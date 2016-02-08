//
//  ConfirmaInterfaceController.swift
//  Pizza
//
//  Created by Sergio Albarran on 07/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmaInterfaceController: WKInterfaceController {
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    @IBOutlet var tamaño_label: WKInterfaceLabel!
    @IBOutlet var masa_label: WKInterfaceLabel!
    @IBOutlet var queso_label: WKInterfaceLabel!
    @IBOutlet var ing_label: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        let c = context as! Pedido
        tamaño = c.tamaño
        masa = c.masa
        queso = c.queso
        ingredientes = c.ingredientes
        let strinIng = ingredientes.joinWithSeparator(", ")

        tamaño_label.setText(tamaño)
        masa_label.setText(masa)
        queso_label.setText(queso)
        ing_label.setText(strinIng)
    }

    @IBAction func Cocinar() {
        let cancel = WKAlertAction(title: "Regresar", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
            
        })
        
        let action = WKAlertAction(title: "Cocinar", style: WKAlertActionStyle.Default, handler: { () -> Void in
            self.pushControllerWithName("reinicio", context: nil)
        })
        
        self.presentAlertControllerWithTitle("Fin del pedido", message: "Deseas cocinar la pizza configurada?", preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert, actions: [cancel, action])
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
