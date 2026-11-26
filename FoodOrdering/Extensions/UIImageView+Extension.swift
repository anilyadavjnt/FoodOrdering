//
//  UIImageView+Extension.swift
//  FoodOrdering
//
//  Created by Anil Yadav on 19/11/26.
//  Email: anilyadavjnt@gmail.com
//  Contact No: +91-975211420


import Foundation
import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFill) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else { return }
            ImageCache.shared.image.setObject(image, forKey: url.absoluteString as NSString)
            
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFill) {
        guard let url = URL(string: link) else { return }
        if let cachedImage = ImageCache.shared.image.object(forKey: url.absoluteString as NSString) {
            self.image = cachedImage
        }else{
            downloaded(from: url, contentMode: mode)
        }
    }
}

class ImageCache {
    static let shared = ImageCache()
    var image =  NSCache<NSString, UIImage>()
    init(){}
}

