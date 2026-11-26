//
//  Categories.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420
	

import Foundation

struct Categories: Codable {
    let category: [CategoryItem]
}

struct CategoryItem: Codable {
    let id: Int
    let name: String
    let image: String
}
