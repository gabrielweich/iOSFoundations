//
//  ListViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var category:Category=Category(key:"", value:"")
    var selectedIndex:Int?
    
    var businessList:[String:[BusinessItem]] = [
        "acessories":[BusinessItem(title: "agesiel", description:"dessad", favorited:false)],
        "food":[BusinessItem(title: "fgesiel", description:"dessad", favorited:false)],
        "wearing":[BusinessItem(title: "wgesiel", description:"dessad", favorited:false)],
        "highlights":[BusinessItem(title: "hgesiel", description:"dessad", favorited:false)]
    ]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleOut: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOut.title = category.value
        tableView.dataSource = self
        tableView.delegate = self
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


extension ListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businessList[category.key]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:BusinessItemTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! BusinessItemTableViewCell
        
        cell.title?.text=businessList[category.key]?[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            selectedIndex = indexPath.row
            performSegue(withIdentifier: "godetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "godetail"{
            var vc = segue.destination as! DetailViewController
    
            vc.businessItem = businessList[category.key]?[selectedIndex!]
            //Data has to be a variable name in your RandomViewController
        }
    }
    

    
    
}
