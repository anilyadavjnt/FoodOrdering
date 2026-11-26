//
//  RecommendedItems.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation

struct RecommendedItems {
    let name: String
    let price: String
    let rating: String
    let itemImage: String
}

// MARK: - ProductsList
struct ProductsList: Codable {
    let products: [Product]
}

// MARK: - Product
struct Product: Codable {
    let id: Int
    let name, image, price: String
    let rating: Double
    let reviews, description: String
    let categoryID: Int
    let categoryName: String
    let isRecommended, isFavorite: Bool
}
