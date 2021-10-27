//
//  Book.swift
//  BookList
//
//  Created by 김혜수 on 2021/10/27.
//

import Foundation

struct Book: Codable {
    var id: Int?
    var title: String?
    var author: String?
    var imgUrl: String?
    var summery: String?
    var printLength: Int?
    
    private enum CodingKeys: String, CodingKey {
        case title, author, id
        case imgUrl = "cover_image"
        case summery = "book_summery"
        case printLength = "print_length"
    }
}
