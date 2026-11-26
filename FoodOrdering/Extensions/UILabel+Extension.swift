//
//  UILabel+Extension.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420


import Foundation
import UIKit

extension UILabel {
    
    var mutableAttributedString: NSMutableAttributedString? {
        let attributedString: NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            guard let labelText = self.text else { return nil }
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = self.textAlignment
            attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                          value: paragraphStyle,
                                          range: NSRange(location: 0, length: attributedString.length))
        }
        return attributedString
    }
    
    func addImage(_ image: UIImage, toEndWith height: CGFloat) {
        let fullAttributedString = mutableAttributedString
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = image
        
        let yImage = (font.capHeight - height).rounded() / 2
        let ratio = image.size.width / image.size.height
        imageAttachment.bounds = CGRect(x: 0, y: yImage, width: ratio * height, height: height)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        fullAttributedString?.append(imageString)
        attributedText = fullAttributedString
    }
    
    func addImage(_ image: UIImage, toStartWith height: CGFloat) {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = image
        
        let yImage = (font.capHeight - height).rounded() / 2
        let ratio = image.size.width / image.size.height
        imageAttachment.bounds = CGRect(x: 0, y: yImage, width: ratio * height, height: height)
        
        let fullAttributed = NSMutableAttributedString(attachment: imageAttachment)
        if let rawAttributed = mutableAttributedString {
            fullAttributed.append(rawAttributed)
        }
        attributedText = fullAttributed
    }
}
