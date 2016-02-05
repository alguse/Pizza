//
//  Confirma.swift
//  Pizza
//
//  Created by Sergio Albarran on 05/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import UIKit

class Confirma: UIViewController {
    var tamaño  : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes: [String] = []

    @IBOutlet weak var masa_label: UILabel!
    @IBOutlet weak var queso_label: UILabel!
    @IBOutlet weak var tamaño_label: UILabel!
    @IBOutlet weak var ing_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        masa_label.text = masa
        queso_label.text = queso
        tamaño_label.text = tamaño
        let strinIng = ingredientes.joinWithSeparator(", ")
        ing_label.text = strinIng
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
