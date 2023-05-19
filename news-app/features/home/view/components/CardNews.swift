//
//  CardNews.swift
//  news-app
//
//  Created by André  Lucas on 24/04/23.
//

import SwiftUI

struct CardNews: View {
    var news: NewsEntity
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: URL(string:news.urlToImage ?? ""),content: {image in
                image.resizable()
            }, placeholder: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: .infinity,height: 200)
                    .foregroundColor(.gray)
            })
                .frame(width: .infinity,height: 200)
            Text(news.title ?? "")
                .bold()
                .font(.system(size: 25))
                .multilineTextAlignment(.leading)
            Text(news.publishedAt ?? "")
                .foregroundColor(.gray)
                .font(.system(size: 20))
                .padding([.bottom,.top], 1)
            Text(news.author ?? "")
                .foregroundColor(.gray)
                .font(.system(size: 20))
                
            
        }
        .padding(20)
    }
}

struct CardNews_Previews: PreviewProvider {
    static var previews: some View {
        CardNews(news: NewsEntity(
            author: "Nintendo News",
            title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            urlToImage: "https://hws.dev/paul.jpg",
            publishedAt: "11/09/2001"
        ))
    }
}
