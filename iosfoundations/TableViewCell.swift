//
//  TableViewCell.swift
//  iosfoundations
//
//  Created by Augusto Gabriel de Lara on 17/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoimage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subLabel: UILabel!
    
    @IBOutlet weak var favoritando: UIImageView!
    
    @IBOutlet weak var favoriteImage: UIImageView!
    
    var me:BusinessItem?
    var fav: Bool = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func commonInit(_ imageName: String, title: String, sub: String){
        logoimage.image = UIImage(named: imageName)
        titleLabel.text = title;
        subLabel.text = sub
        
        if fav{
            favoriteImage.image = UIImage(named: "favorites_selected")
        }
        
        
    }

    @IBAction func onFavorite(_ sender: Any) {
        if var eu = me{
            if eu.favorited{
                me!.favorited = false
                favoriteImage.image = UIImage(named: "favorites")
            }else{
                me!.favorited = true
                favoriteImage.image = UIImage(named: "favorites_selected")
            }
        }
    }
}
