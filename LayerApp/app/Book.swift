//
//  Book.swift
//  LayerApp
//
//  Created by 古川信行 on 2018/03/17.
//  Copyright © 2018年 tfuru. All rights reserved.
//

import Foundation

//ドメイン層
class Book{
    var name:String = ""
    var isbn:String = ""
    var count:Int = 0
    
    public init() {
        
    }
    
    public init(name:String,isbn:String,count:Int){
        self.name = name
        self.isbn = isbn
        self.count = count
    }
    
    //在庫 ステータス
    public func stockStatus() -> String {
        var result:String = "在庫あり"
        
        if(self.count == 0){
            //在庫 0 なら 在庫切れ
            result = "在庫ぎれ"
        }
        else if(self.count > 3){
            //在庫が3以上の時は 在庫あり
            result = "在庫あり"
        }
        else {
            //在庫が3未満の時は 残り◯点
            result = String(format:"残り %d 点",(self.count))
        }
        return result
    }
    
    //在庫 追加
    public func addBookStock(){
        self.count += 1
    }
    
    //在庫 消費
    public func subBookStock(){
        if(self.count > 0){
            self.count -= 1
        }
    }
}
