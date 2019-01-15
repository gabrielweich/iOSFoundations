//
//  ViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var category:String=""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func onAcessorios(_ sender: Any) {
        category = "acessorios"
        performSegue(withIdentifier: "golist", sender: self)
    }
    
    @IBAction func onVestuario(_ sender: Any) {
        category = "vestuario"
        performSegue(withIdentifier: "golist", sender: self)
    }
    
    @IBAction func onAlimentacao(_ sender: Any) {
        category = "alimentacao"
        performSegue(withIdentifier: "golist", sender: self)
    }
    
    @IBAction func onDestaques(_ sender: Any) {
        category = "destaques"
        performSegue(withIdentifier: "golist", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "golist"{
            var vc = segue.destination as! ListViewController
            vc.category = category
            //Data has to be a variable name in your RandomViewController
        }
    }
    
}

