//
//  BusinessList.swift
//  iosfoundations
//
//  Created by Gabriel Weich on 17/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import Foundation

class BusinessList{
    static var businessList:[String:[BusinessItem]] = [
        "acessories":[
            BusinessItem(title: "agesiel", description:"dessad", favorited: false, image: "img_0")
        ],
        "food":[
            BusinessItem(title: "fgesiel", description:"dessad", favorited: true, image: "img_1")
        ],
        "wearing":[
            BusinessItem(title: "wgesiel", description:"dessad", favorited: true, image: "img_2")
        ],
        "highlights":[
            BusinessItem(title: "hgesiel", description:"dessad", favorited: false, image: "img_3")
        ]
    ]
    
    static func getList(category:String) -> [BusinessItem]?{
        return businessList[category]
    }
    
    static func getFavorited() -> [BusinessItem]{
        var favorited:[BusinessItem] = []
        for cbi in businessList.values {
            for bi in cbi{
                if bi.favorited{
                    favorited.append(bi)
                }
            }
        }
        return favorited
    }
}
