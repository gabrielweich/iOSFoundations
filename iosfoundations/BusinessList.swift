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
        "acessories":[BusinessItem(title: "agesiel", description:"dessad", favorited:false)],
        "food":[BusinessItem(title: "fgesiel", description:"dessad", favorited:false)],
        "wearing":[BusinessItem(title: "wgesiel", description:"dessad", favorited:false)],
        "highlights":[BusinessItem(title: "hgesiel", description:"dessad", favorited:false)]
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
