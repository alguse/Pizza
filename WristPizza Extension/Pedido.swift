//
//  Pedido.swift
//  Pizza
//
//  Created by Sergio Albarran on 07/02/16.
//  Copyright © 2016 Sergio Albarran. All rights reserved.
//

import WatchKit

class Pedido: NSObject {
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    init (t:String, m:String, q:String, i:[String]){
        tamaño=t
        masa=m
        queso=q
        ingredientes=i
    }
}
