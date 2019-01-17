//
//  DetailViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 17/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var businessItem:BusinessItem?

    
    @IBOutlet weak var imageOutl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bi = businessItem {
            imageOutl.image = UIImage(named: bi.image)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
