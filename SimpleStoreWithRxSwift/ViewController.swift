//
//  ViewController.swift
//  SimpleStoreWithRxSwift
//
//  Created by Alexey on 1/12/20.
//  Copyright © 2020 Алексей. All rights reserved.
//

import UIKit
import RxSwift
import RxCocao

class ViewController: UIViewController {

    @IBOutlet weak var storeTabelView: UITableView!
    @IBOutlet weak var generalPrice: UILabel!
    public var price:Float = 0
    let product = Observable.just({
        Product(name: "Burger", price:8.99, text:"Вкусный бургер, из НЕЖНЕЙШЕГО мяса", flickrID: "burger"),
        Product(name: "Pizza", price:14.99, text:"Берегитесь черепашек из канализации", flickrID: "pizza"),
        Product(name: "Meatloaf", price:10.99, text:"Кто-то украл твой вкусный рулет, купи его у нас", flickrID: "meatloaf"),
        Product(name: "Pusta", price:19.45, text:"Паста НЕ ЗУБНАЯ !!!", flickrID: "pusta"),
        Product(name: "Junior", price:800, text:"Молодые специалисты как грибы", flickrID: "junior")
    })

    override func viewDidLoad() {
        generalPrice.text = "Общая сумма : \(price)"
        super.viewDidLoad()
        produc
        // Do any additional setup after loading the view.
    }

    @IBAction func departureToBasket(_ sender: Any) {
    }

}

