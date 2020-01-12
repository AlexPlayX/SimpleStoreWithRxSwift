//
//  ViewController.swift
//  SimpleStoreWithRxSwift
//
//  Created by Alexey on 1/12/20.
//  Copyright © 2020 Алексей. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var storeTabelView: UITableView!
    @IBOutlet weak var generalPrice: UILabel!
    public var price:Float = 0
    let disposeBag = DisposeBag()
    private var product = Observable.just([
        Product(name: "Burger", price:8.99, text:"Вкусный бургер, из НЕЖНЕЙШЕГО мяса", flickrID: "burger",quantityOfProduct: 0 ),
        Product(name: "Pizza", price:14.99, text:"Берегитесь черепашек из канализации", flickrID: "pizza", quantityOfProduct: 0),
        Product(name: "Meatloaf", price:10.99, text:"Кто-то украл твой вкусный рулет, купи его у нас", flickrID: "meatloaf", quantityOfProduct:0),
        Product(name: "Pusta", price:19.45, text:"Паста НЕ ЗУБНАЯ !!!", flickrID: "pasta",quantityOfProduct:0),
        Product(name: "Junior", price:800, text:"Молодые специалисты как грибы", flickrID: "junior",quantityOfProduct:0)
    ])


    override func viewDidLoad() {
        generalPrice.text = "Общая сумма : \(price) BYN"
        super.viewDidLoad()

        product.bind(to: storeTabelView.rx.items(cellIdentifier: "Cell", cellType: Cell.self)){row, product, cell  in
                cell.nameProduct.text = product.name
                cell.productText.text = product.text
                cell.imageProduct?.image = product.image
                cell.price.text = "Цена :" + String(product.price)
            cell.quantityOfProduct.text = String(product.quantityOfProduct)
        }

        

    

        // Do any additional setup after loading the view.
    }

    @IBAction func departureToBasket(_ sender: Any) {
        print("В корзину")
    }

}

