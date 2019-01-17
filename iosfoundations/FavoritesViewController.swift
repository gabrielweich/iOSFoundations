//
//  FavoritesViewController.swift
//  iosfoundations
//
//  Created by Henrique Reis Kops on 15/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var favorited:[BusinessItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        favorited = BusinessList.getFavorited()
        print(favorited)
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCell")
        tableView.tableFooterView = UIView()

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

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(favorited.count)
        return favorited.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        print(favorited[indexPath.row])
        cell.commonInit(favorited[indexPath.row].image
            , title: favorited[indexPath.row].title, sub: favorited[indexPath.row].description)
        
        cell.me = favorited[indexPath.row]
        cell.fav = true
        return cell
    }
    
}
