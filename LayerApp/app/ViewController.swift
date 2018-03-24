//
//  ViewController.swift
//  LayerApp
//
//  Created by 古川信行 on 2018/03/17.
//  Copyright © 2018年 tfuru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //アプリケーション層 へアクセス
    let app:App = App()
    
    //ドメイン層
    var book:Book?
    
    //在庫ステータス表示
    @IBOutlet weak var lblStockStatus: UILabel!
    //書籍名
    @IBOutlet weak var lblBookName: UILabel!
    //ISBN
    @IBOutlet weak var lblBookIsbn: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //アプリケーション層 へアクセス 画面に表示
        show( book:app.getBook() )
    }
    
    //ユーザインタフェース層 へアクセス
    public func show(book:Book){
        //ドメイン層へアクセスして 在庫ステータスを取得
        //ユーザーインターフェース層 画面に表示
        lblStockStatus.text = book.stockStatus()
        lblBookName.text = book.name
        lblBookIsbn.text = book.isbn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickBtnAddStock(_ sender: Any) {
        //アプリケーション層　在庫 追加
        show( book:app.addBookStock() )
    }
    
    @IBAction func clickBtnStockSub(_ sender: Any) {
        //アプリケーション層　在庫 削減
        show( book:app.subBookStock() )
    }
}

