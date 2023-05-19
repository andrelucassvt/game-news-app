//
//  NintendoTabView.swift
//  news-app
//
//  Created by André  Lucas on 24/04/23.
//

import SwiftUI

struct NintendoTabView: View {
    @StateObject var presenter = HomePresenter()
    
    var body: some View {
        VStack{
            switch presenter.state {
            case.loading:
                ProgressLoading()
            case .sucess(let noticias):
                ScrollView{
                    ForEach(noticias) { noticia in
                        CardNews(news: noticia)
                    }
                }
            case .error(let error):
                Text("erro: \(error.localizedDescription)")
            }
        }.onAppear{
            presenter.getNoticiasNintendo()
        }
    }
}

struct NintendoTabView_Previews: PreviewProvider {
    static var previews: some View {
        NintendoTabView()
    }
}
