//
//  Application.swift
//  LayerApp
//
//  Created by 古川信行 on 2018/03/17.
//  Copyright © 2018年 tfuru. All rights reserved.
//

import Foundation

//ユーザインタフェース層 ViewController
//アプリケーション層    App
//ドメイン層           Book
//インフラ層           Infra

class App {
    //ドメイン層
    var book:Book?
    
    //インフラ層
    let infra:Infra = Infra();
    
    init(){
        //インフラ層へアクセス データ読み込み
        book = infra.loadBook()
    }
    
    //ドメイン層 へアクセス book取得
    public func getBook()-> Book{
        return book!
    }

    //在庫 加算
    public func addBookStock()->Book{
        //ドメイン層 へアクセス
        book?.addBookStock()
        //TODO インフラ層 へアクセスして在庫更新
        return book!
    }
    
    //在庫 削減
    public func subBookStock()->Book{
        book?.subBookStock()
        //TODO インフラ層 へアクセスして在庫更新
        return book!
    }
}
