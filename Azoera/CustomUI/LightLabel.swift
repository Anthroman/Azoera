//
//  LightLabel.swift
//  Azoera
//
//  Created by Anthroman on 4/5/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class LightLabel: AzoeraLabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.latoLight)
        self.textColor = .subtleTextColor
    }
}
