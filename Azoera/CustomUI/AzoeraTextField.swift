//
//  AzoeraTextField.swift
//  Azoera
//
//  Created by Anthroman on 4/5/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraTextField: UITextField {

    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setUpUI() {
        self.backgroundColor = .blackOverlay
        self.addCornerRadius(10)
        self.layer.masksToBounds = true
        self.textColor = .mainTextColor
        self.addAccentBorder()
        self.updateFontTo(fontName: FontNames.latoRegular)
        updatePlaceHolder()
    }
    
    func updateFontTo(fontName: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: fontName, size: size)
    }
    
    func updatePlaceHolder() {
        let currentPlaceholderText = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholderText ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.subtleTextColor, NSAttributedString.Key.font : UIFont(name: FontNames.latoLight, size: 16)!])
        
    }
    
}
