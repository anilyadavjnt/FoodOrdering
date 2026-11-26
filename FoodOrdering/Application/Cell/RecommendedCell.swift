//
//  RecommendedCell.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import UIKit

class RecommendedCell: UICollectionViewCell {
    
    static let identifier = String(describing: RecommendedCell.self)

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    @IBOutlet weak var productRatingLbl: UILabel!
    @IBOutlet weak var favoritesBtn: UIButton!
    @IBOutlet weak var addtoCartBtn: UIButton!
    
    func setup(_ item: Product) {
//        productImageView.image = UIImage(named: item.image)
        productImageView.downloaded(from: item.image)
        productTitleLbl.text = item.name
        productPriceLbl.text = item.price
        productRatingLbl.text = String(item.rating)
        productImageView.layer.cornerRadius = 16
    }

}
