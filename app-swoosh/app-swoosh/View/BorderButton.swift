//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Gulnara Saimassay on 6/17/20.
//  Copyright © 2020 Gulnara Saimassay. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
