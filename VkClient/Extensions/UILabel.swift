//
//  UILabel.swift
//  VkClient
//
//  Created by Alexander Fomin on 13.01.2021.
//

import UIKit

extension UILabel {
    func setAttributedText(text: String, subtext: String) {
 
        let paragrathStyle = NSMutableParagraphStyle()
        paragrathStyle.lineSpacing = 4
        
        let firstLineAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.bolt14,
            .paragraphStyle: paragrathStyle
        ]
        let secontLineAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.regular12,
            .foregroundColor: UIColor.labelGray
        ]
        
        let firstLine = NSMutableAttributedString(string: text, attributes: firstLineAttributes)
        let secodLine = NSMutableAttributedString(string: "\n"+subtext, attributes: secontLineAttributes)
       
        firstLine.append(secodLine)
   
        self.numberOfLines = 2
        self.attributedText = firstLine
        
    }
}
