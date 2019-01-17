//
//  ListViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return titulo.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.commonInit("img_\(indexPath.item)", title: titulo[indexPath.item], sub: word[indexPath.item])
        return cell
    }
    
    
    var category:Category=Category(key:"", value:"")
    var businessList:[String:[BusinessItem]] = [
        "acessories":[BusinessItem(title: "agesiel", description:"dessad", favorited:false)],
        "wearing":[BusinessItem(title: "wgesiel", description:"dessad", favorited:false)],
        "highlights":[BusinessItem(title: "hgesiel", description:"dessad", favorited:false)]
    ]
    
    let word = ["AAAAAA","BBBBB","CCCCC","DDDDDD","EEEEEE","FFFFFFFF"]
    let titulo = ["Lugar_1","Lugar_2","Lugar_3","Lugar_4","Lugar_5","Lugar_6"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleOut: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOut.title = category.value
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCell")
        // Do any additional setup after loading the view.
    }
    

}
