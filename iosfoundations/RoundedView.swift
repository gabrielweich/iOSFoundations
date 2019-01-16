//
//  RoundedView.swift
//  iosfoundations
//
//  Created by Larissa Salerno de Castro on 16/01/19.
//  Copyright © 2019 Gabriel Weich. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    @IBInspectable
    var cornerRadius:CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
            
            
        }
    }


}
