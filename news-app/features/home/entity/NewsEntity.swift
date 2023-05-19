//
//  NewsEntity.swift
//  news-app
//
//  Created by André  Lucas on 07/05/23.
//

import Foundation


struct NewsEntity: Codable,Identifiable {
    var id: String {
        return "\(author ?? "")\(title ?? "")\(url ?? "")\(description ?? "")\(urlToImage ?? "")\(publishedAt ?? "")".hashValue.description
    }
    var author: String?
    var title: String?
    var url: String?
    var description: String?
    var urlToImage: String?
    var publishedAt: String?
}
