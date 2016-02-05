//
//  Ingredientes.swift
//  Pizza
//
//  Created by Sergio Albarran on 05/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sel_op1(button: UIButton ) {
        
        switch button.tag {
        case 1:
            if !ingredientes.contains("Jamón"){
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
                ingredientes.append("Jamón")
            }else{
            button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            ingredientes = ingredientes.filter() {$0 != "Jamón"}
            }
        case 2:
            if !ingredientes.contains("Pepperoni"){
                button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
                ingredientes.append("Pepperoni")
            }else{
                button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                ingredientes = ingredientes.filter() {$0 != "Pepperoni"}
            }
        case 3:
            if !ingredientes.contains("Pavo"){
                button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
                ingredientes.append("Pavo")
            }else{
                button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                ingredientes = ingredientes.filter() {$0 != "Pavo"}
            }
        case 4:
            if !ingredientes.contains("Aceitunas"){
                button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
                ingredientes.append("Aceitunas")
            }else{
                button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                ingredientes = ingredientes.filter() {$0 != "Aceitunas"}
            }
        case 5:
            if !ingredientes.contains("Pimiento"){
                button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
                ingredientes.append("Pimiento")
            }else{
                button.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                ingredientes = ingredientes.filter() {$0 != "Pimiento"}
            }
            
        default:
            break;
        }
    }
    
    @IBAction func irACocina(sender: AnyObject) {
        if ingredientes.count <= 0{
            let alertController = UIAlertController(title: "Pizza Creator", message:
                "Debes seleccionar al menos un ingrediente", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Volver", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)

        }else{
        performSegueWithIdentifier("confirma", sender: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if "confirma" == segue.identifier {
            let sigVista = segue.destinationViewController as! Confirma
            sigVista.tamaño = tamaño
            sigVista.masa = masa
            sigVista.queso = queso
            sigVista.ingredientes = ingredientes
        }
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
