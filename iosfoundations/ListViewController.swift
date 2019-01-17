//
//  ListViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class ListViewController: UIViewController{

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    var category:Category=Category(key:"", value:"")
    var selectedIndex:Int?
    

    var businessList:[BusinessItem]=[]
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleOut: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOut.title = category.value
        tableView.dataSource = self
        tableView.delegate = self
        
        businessList = BusinessList.getList(category: category.key) ?? []
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCell")
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.

        businessList = BusinessList.getList(category: category.key) ?? []
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
        return businessList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
       
        cell.commonInit(businessList[indexPath.row].image
            , title: businessList[indexPath.row].title, sub: businessList[indexPath.row].description)
        
        cell.me = businessList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) {
            selectedIndex = indexPath.row
            performSegue(withIdentifier: "godetail", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "godetail"{
            var vc = segue.destination as! DetailViewController
    
            vc.businessItem = businessList[selectedIndex!]
            //Data has to be a variable name in your RandomViewController
        }
    }
    

}
