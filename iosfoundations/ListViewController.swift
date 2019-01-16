//
//  ListViewController.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var category:String=""
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleOut: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOut.title = category
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:BusinessItemTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! BusinessItemTableViewCell
        
        cell.title?.text=category
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        
        tableView.deselectRow(indexPath, animated: true)
        
        let row = indexPath.row
        print("Row: \(row)")
        
        print(meetingArray[row] as! String)
        
    }
    
    
}
