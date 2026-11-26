//
//  RoundedTabBarController.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420


import Foundation
import UIKit

class RoundedTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawShapeLayer()
        if let items = self.tabBar.items {
            items.forEach { item in item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -15, right: 0) }
        }
        
        self.tabBar.itemWidth = 50.0
        self.tabBar.itemPositioning = .centered
    }
    
    func drawShapeLayer() {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 30, y: self.tabBar.bounds.minY + 5, width: self.tabBar.bounds.width - 60, height: self.tabBar.bounds.height + 10), cornerRadius: (self.tabBar.frame.width/2)).cgPath
        layer.shadowColor = UIColor.systemRed.cgColor // EC5F2A
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 25.0
        layer.shadowOpacity = 0.5
        layer.borderWidth = 1.0
        layer.opacity = 1.0
        layer.isHidden = false
        layer.masksToBounds = false
        layer.fillColor = UIColor.init(hexString: "#FAF7F5").cgColor
        
        self.tabBar.layer.insertSublayer(layer, at: 0)
        
    }
}
