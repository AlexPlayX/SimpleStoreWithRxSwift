//
//  Cell.swift
//  SimpleStoreWithRxSwift
//
//  Created by Alexey on 1/12/20.
//  Copyright © 2020 Алексей. All rights reserved.
//

import Foundation
import UIKit

class Cell:UITableViewCell {
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var productText: UITextView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var quantityOfProduct: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
}
