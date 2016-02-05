//
//  ViewController.swift
//  Pizza
//
//  Created by Sergio Albarran on 03/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tamaño_selec : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
            tamaño_selec = "Chica"
        case 2:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            tamaño_selec = "Mediana"
        case 3:
            button.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
            tamaño_selec = "Grande"
        default:
            tamaño_selec = "Chica"
            break;
        }
        performSegueWithIdentifier("masa", sender: nil)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if "masa" == segue.identifier {
            let sigVista = segue.destinationViewController as! MasaViewController
            sigVista.tamaño = tamaño_selec
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

