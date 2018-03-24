//
//  Infra.swift
//  LayerApp
//
//  Created by 古川信行 on 2018/03/17.
//  Copyright © 2018年 tfuru. All rights reserved.
//

import Foundation

class Infra {
    var book:Book = Book(name: "書籍",isbn: "ISBN-0000", count:0)
    
    func loadBook() -> Book {
        return book
    }
    
    func saveBook(book:Book){
        self.book = book
    }
}
