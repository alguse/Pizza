//
//  Queso.swift
//  Pizza
//
//  Created by Sergio Albarran on 04/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import UIKit

class Queso: UIViewController {
    var tamaño : String = ""
    var masa : String = ""
    var queso_selec : String = ""
    
    override func viewWillAppear(animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sel_op1(button: UIButton ) {
        
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                btn.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
        }
        
        switch button.tag {
        case 1:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            queso_selec = "Mozzarela"
        case 2:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            queso_selec = "Cheddar"
        case 3:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            queso_selec = "Parmesano"
        case 3:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            queso_selec = "Sin queso"
            
        default:
            queso_selec = "Sin queso"
            break;
        }
        performSegueWithIdentifier("ingredientes", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if "ingredientes" == segue.identifier {
            let sigVista = segue.destinationViewController as! Ingredientes
            sigVista.tamaño = tamaño
            sigVista.masa = masa
            sigVista.queso = queso_selec
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
