//
//  Product.swift
//  SimpleStoreWithRxSwift
//
//  Created by Alexey on 1/12/20.
//  Copyright © 2020 Алексей. All rights reserved.
//

import Foundation
import UIKit

struct Product {
    let name: String
    let price: Float
    let text:String
    let flickrID: String
    var quantityOfProduct: Int
    var image: UIImage?

    init(name: String, price:Float, text:String, flickrID: String, quantityOfProduct: Int) {
        self.name = name
        self.price = price
        self.text = text
        self.flickrID = flickrID
        self.quantityOfProduct = quantityOfProduct
        image = UIImage(named: flickrID)
    }

}
