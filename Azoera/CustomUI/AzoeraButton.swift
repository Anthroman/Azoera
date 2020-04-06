//
//  AzoeraButton.swift
//  Azoera
//
//  Created by Anthroman on 4/5/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFont()
        
    }
    
    func updateFont() {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: FontNames.latoRegular, size: size)
    }
    
    func setUpUI() {
        self.backgroundColor = .greenAccent
        self.setTitleColor((.mainTextColor), for: .normal)
        self.addCornerRadius(8)
    }
}
