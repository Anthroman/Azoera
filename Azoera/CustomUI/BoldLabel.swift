//
//  BoldLabel.swift
//  Azoera
//
//  Created by Anthroman on 4/5/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation

class BoldLabel: AzoeraLabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.latoBold)
    }
}
