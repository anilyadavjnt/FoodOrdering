//
//  CategoriesCollectionCell.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import UIKit

class CategoriesCollectionCell: UICollectionViewCell {
    
    static let identifier = String(String(describing: CategoriesCollectionCell.self))
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    
    func setup(_ category: CategoryItem) {
        categoryTitleLbl.text = category.name
        categoryImageView.image = UIImage(named: category.image)
    
    }
    
}
